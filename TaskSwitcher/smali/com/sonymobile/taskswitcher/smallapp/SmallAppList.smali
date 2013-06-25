.class public Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;
.super Ljava/util/ArrayList;
.source "SmallAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$1;,
        Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$AppWidgetComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final SMALL_APPS_SORT_PREF_NAME:Ljava/lang/String; = "small_apps_sort_pref"

.field private static sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxSmallAppsInList:I

.field private mSortedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    .line 74
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mMaxSmallAppsInList:I

    .line 77
    const-string v2, "small_apps_pref"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, smallAppPrefs:Landroid/content/SharedPreferences;
    const-string v2, "first_start"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->firstStartSetup()V

    .line 81
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_start"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static addSmallAppToSortedPrefs(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 8
    .parameter "context"
    .parameter "smallAppComponent"

    .prologue
    .line 114
    sget-object v6, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f07

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 118
    .local v4, maxSmallAppsInList:I
    const-string v6, "small_apps_sort_pref"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 121
    .local v5, sortPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 122
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, identifier:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, appName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    .end local v0           #appName:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    sget-object v6, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    return-void

    .line 132
    .restart local v0       #appName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 139
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    .end local v3           #identifier:Ljava/lang/String;
    .end local v4           #maxSmallAppsInList:I
    .end local v5           #sortPrefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v6

    sget-object v7, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 123
    .restart local v0       #appName:Ljava/lang/String;
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #i:I
    .restart local v3       #identifier:Ljava/lang/String;
    .restart local v4       #maxSmallAppsInList:I
    .restart local v5       #sortPrefs:Landroid/content/SharedPreferences;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private firstStartSetup()V
    .locals 8

    .prologue
    .line 91
    sget-object v5, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    const-string v6, "small_apps_sort_pref"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 96
    .local v4, sortPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 97
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v5, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, smallApps:[Ljava/lang/String;
    array-length v0, v3

    .line 101
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    sget-object v5, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    return-void

    .line 106
    .end local v0           #count:I
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    .end local v3           #smallApps:[Ljava/lang/String;
    .end local v4           #sortPrefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method private static updateSmallAppsSortedPrefs(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, smallApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 151
    :try_start_0
    const-string v4, "small_apps_sort_pref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 153
    .local v3, sortPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    sget-object v4, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    return-void

    .line 161
    .end local v0           #count:I
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    .end local v3           #sortPrefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method


# virtual methods
.method public populateWithSmallApps()V
    .locals 24

    .prologue
    .line 197
    sget-object v3, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 200
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    const-string v5, "small_apps_sort_pref"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 202
    .local v19, sortPrefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 203
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mMaxSmallAppsInList:I

    if-ge v11, v3, :cond_0

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, appName:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 211
    .end local v8           #appName:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->clear()V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 217
    .local v17, packMan:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v22

    .line 218
    .local v22, widgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v22 .. v22}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v23

    .line 219
    .local v23, widgetProviderInfos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v21, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$AppWidgetComparator;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$AppWidgetComparator;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$1;)V

    .line 220
    .local v21, widgetComparator:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$AppWidgetComparator;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    const/16 v16, 0x0

    .line 223
    .local v16, needUpdateSortOrder:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 225
    .local v13, identifier:Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 226
    const-string v3, "@"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 227
    .local v20, split:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 228
    const/16 v16, 0x1

    .line 229
    goto :goto_1

    .line 208
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #identifier:Ljava/lang/String;
    .end local v16           #needUpdateSortOrder:Z
    .end local v17           #packMan:Landroid/content/pm/PackageManager;
    .end local v20           #split:[Ljava/lang/String;
    .end local v21           #widgetComparator:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$AppWidgetComparator;
    .end local v22           #widgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v23           #widgetProviderInfos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v8       #appName:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 211
    .end local v8           #appName:Ljava/lang/String;
    .end local v11           #i:I
    .end local v19           #sortPrefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    sget-object v5, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->sSortedPrefsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 232
    .restart local v11       #i:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #identifier:Ljava/lang/String;
    .restart local v16       #needUpdateSortOrder:Z
    .restart local v17       #packMan:Landroid/content/pm/PackageManager;
    .restart local v19       #sortPrefs:Landroid/content/SharedPreferences;
    .restart local v20       #split:[Ljava/lang/String;
    .restart local v21       #widgetComparator:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList$AppWidgetComparator;
    .restart local v22       #widgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v23       #widgetProviderInfos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_2
    new-instance v15, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v15}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 233
    .local v15, info:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 234
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v15, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v14

    .line 235
    .local v14, index:I
    if-ltz v14, :cond_3

    .line 236
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #info:Landroid/appwidget/AppWidgetProviderInfo;
    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    .line 237
    .restart local v15       #info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 240
    .local v2, smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :try_start_2
    iget-object v3, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v18

    .line 242
    .local v18, res:Landroid/content/res/Resources;
    iget v3, v15, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 243
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v15, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v5, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setupAsSmallAppWidget(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;J)V

    .line 245
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 246
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v18           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v10

    .line 248
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, 0x1

    .line 252
    goto/16 :goto_1

    .line 249
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v10

    .line 251
    .local v10, e:Landroid/content/res/Resources$NotFoundException;
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 255
    .end local v2           #smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .end local v10           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 259
    .end local v14           #index:I
    .end local v15           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v20           #split:[Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 260
    .local v9, compName:Landroid/content/ComponentName;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v15

    .line 261
    .local v15, info:Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 263
    .restart local v2       #smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v9}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setupAsSmallApp(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    .line 265
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 266
    .end local v2           #smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .end local v9           #compName:Landroid/content/ComponentName;
    .end local v15           #info:Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v10

    .line 268
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 273
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13           #identifier:Ljava/lang/String;
    :cond_5
    if-eqz v16, :cond_6

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->updateSortOrder()V

    .line 276
    :cond_6
    return-void
.end method

.method public updateSortOrder()V
    .locals 7

    .prologue
    .line 173
    iget-object v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->size()I

    move-result v1

    .line 175
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 176
    invoke-virtual {p0, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 177
    .local v0, appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->isWidget()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidgetId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, identifier:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v3           #identifier:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .restart local v3       #identifier:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    .end local v0           #appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .end local v3           #identifier:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->mSortedApps:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->updateSmallAppsSortedPrefs(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 189
    return-void
.end method
