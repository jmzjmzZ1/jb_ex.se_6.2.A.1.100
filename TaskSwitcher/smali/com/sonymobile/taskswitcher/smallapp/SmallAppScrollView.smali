.class public Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SmallAppScrollView.java"

# interfaces
.implements Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;
    }
.end annotation


# static fields
.field private static final EDGE_SCROLL_SPEED:F = 350.0f

.field public static final PREF_FIRST_START_KEY:Ljava/lang/String; = "first_start"

.field public static final PREF_SHOW_REMOVE_DIALOG_KEY:Ljava/lang/String; = "show_remove_dialog"

.field public static final PREF_WIDGET_COUNTER_KEY:Ljava/lang/String; = "widget_counter"

.field public static final SEARCH_QUERY:Ljava/lang/String; = "\"Small apps extension for Sony products\""

.field public static final SMALL_APPS_MARKET_SEARCH:Ljava/lang/String; = "market://search?q=\"Small apps extension for Sony products\""

.field public static final SMALL_APPS_PREF_NAME:Ljava/lang/String; = "small_apps_pref"

.field public static final SMALL_APP_ACTION:Ljava/lang/String; = "com.sony.smallapp.intent.action.MAIN"

.field public static final SMALL_APP_CATEGORY:Ljava/lang/String; = "com.sony.smallapp.intent.category.LAUNCHER"

.field private static final SMALL_APP_MANAGER_CLS:Ljava/lang/String; = ".SmallAppManagerService"

.field public static final SMALL_APP_MANAGER_PKG:Ljava/lang/String; = "com.sony.smallapp.managerservice"

.field private static final SMALL_APP_WIDGET_CMD_DELETE:Ljava/lang/String; = "del"

.field private static final SMALL_APP_WIDGET_CMD_START:Ljava/lang/String; = "start"

.field private static final SMALL_APP_WIDGET_EXTRA_COMMAND:Ljava/lang/String; = "cmd"

.field private static final SMALL_APP_WIDGET_EXTRA_COMPONENT:Ljava/lang/String; = "component"

.field private static final SMALL_APP_WIDGET_EXTRA_ID:Ljava/lang/String; = "id"

.field private static final SMALL_APP_WIDGET_HOST_CLASS:Ljava/lang/String; = "com.sonymobile.smallapp.widget.SmallAppWidgetHostService"

.field private static final SMALL_APP_WIDGET_HOST_PACKAGE:Ljava/lang/String; = "com.sonymobile.smallapp.widget"


# instance fields
.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mCurrentEmptySlotIndex:I

.field private mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

.field private mDragLocationX:I

.field private mLayout:Landroid/widget/LinearLayout;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxSmallAppsInList:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

.field private mSmallAppsPerPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 125
    iput v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    .line 130
    iput v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    .line 165
    new-instance v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-direct {v0, p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mMaxSmallAppsInList:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I

    return v0
.end method

.method private addAppFromItemList(Ljava/util/ArrayList;I)V
    .locals 7
    .parameter
    .parameter "dialogTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    new-instance v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppComparator;

    invoke-direct {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppComparator;-><init>()V

    .line 736
    .local v0, appComparator:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppComparator;
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 737
    iget-object v5, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v5}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 738
    .local v1, appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-static {p1, v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 739
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 740
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setInUse(Z)V

    .line 743
    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->isWidget()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 744
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 750
    .end local v1           #appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .end local v4           #index:I
    :cond_1
    new-instance v2, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppNameComparator;

    invoke-direct {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppNameComparator;-><init>()V

    .line 751
    .local v2, appNameComparator:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppNameComparator;
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 753
    new-instance v5, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;

    invoke-direct {v5, p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p0, v5, p2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showAddFromListDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Landroid/widget/BaseAdapter;I)V

    .line 755
    return-void
.end method

.method private deleteWidget(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V
    .locals 4
    .parameter "smallAppWidget"

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sonymobile.smallapp.widget"

    const-string v2, "com.sonymobile.smallapp.widget.SmallAppWidgetHostService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v1, "component"

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidgetId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 488
    const-string v1, "cmd"

    const-string v2, "del"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 490
    return-void
.end method

.method private getAllInstalledSmallApps()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 493
    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 494
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.sony.smallapp.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v6, mainIntent:Landroid/content/Intent;
    const-string v10, "com.sony.smallapp.intent.category.LAUNCHER"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {v7, v6, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 499
    .local v9, smallApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 501
    .local v4, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, label:Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 503
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .local v1, compName:Landroid/content/ComponentName;
    new-instance v8, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;-><init>(Landroid/content/Context;)V

    .line 506
    .local v8, smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-virtual {v8, v5, v3, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setupAsSmallApp(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    .line 507
    invoke-virtual {v8, v12}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setInUse(Z)V

    .line 508
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    .end local v1           #compName:Landroid/content/ComponentName;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #label:Ljava/lang/String;
    .end local v8           #smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :cond_0
    return-object v0
.end method

.method private getAllInstalledWidgets()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 516
    .local v8, packMan:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    .line 517
    .local v11, widgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v11}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v12

    .line 520
    .local v12, widgetProviders:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v10, widgetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    .line 523
    .local v7, info:Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_0
    iget-object v4, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 524
    .local v9, res:Landroid/content/res/Resources;
    iget v4, v7, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 525
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 526
    .local v1, label:Ljava/lang/String;
    iget-object v3, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 527
    .local v3, compName:Landroid/content/ComponentName;
    new-instance v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iget-object v4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;-><init>(Landroid/content/Context;)V

    .line 528
    .local v0, smallAppWidget:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setupAsSmallAppWidget(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;J)V

    .line 529
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setInUse(Z)V

    .line 530
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v0           #smallAppWidget:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .end local v1           #label:Ljava/lang/String;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #compName:Landroid/content/ComponentName;
    .end local v9           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 536
    .end local v7           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    return-object v10
.end method

.method private getNumberOfNotUsedItemsInList(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 773
    .local v4, notUsedItems:I
    new-instance v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppComparator;

    invoke-direct {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppComparator;-><init>()V

    .line 774
    .local v0, appComparator:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppComparator;
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 775
    iget-object v5, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v5}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 776
    .local v1, appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-static {p1, v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 777
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 778
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 781
    .end local v1           #appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .end local v3           #index:I
    :cond_1
    return v4
.end method

.method private getTopView()Landroid/view/View;
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 466
    const-string v1, "com.sonymobile.taskswitcher.SMALL_APP_CONTAINER_VIEW_TAG"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 468
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendClickToTopView()V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getTopView()Landroid/view/View;

    move-result-object v0

    .line 458
    .local v0, top:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 461
    :cond_0
    return-void
.end method

.method private startSmallApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V
    .locals 13
    .parameter "smallApp"

    .prologue
    const/4 v12, 0x0

    .line 431
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v6, start:Landroid/content/Intent;
    const-string v8, "com.sony.smallapp.managerservice"

    const-string v9, "com.sony.smallapp.managerservice.SmallAppManagerService"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 435
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.sony.smallapp.managerservice"

    .line 437
    .local v5, pkg:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".SmallAppManagerService"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, cls:Ljava/lang/String;
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 442
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 443
    .local v4, packMan:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 444
    new-instance v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {v1, p0, v8}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;Landroid/content/ComponentName;)V

    .line 446
    .local v1, connection:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v1, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 448
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->sendClickToTopView()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1           #connection:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;
    .end local v4           #packMan:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f09

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 452
    .local v7, toastText:Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-static {v8, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startSmallAppWidget(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V
    .locals 4
    .parameter "smallAppWidget"

    .prologue
    .line 473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sonymobile.smallapp.widget"

    const-string v2, "com.sonymobile.smallapp.widget.SmallAppWidgetHostService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "component"

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 476
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidgetId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 477
    const-string v1, "cmd"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 480
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->sendClickToTopView()V

    .line 481
    return-void
.end method

.method private updateEmptySlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->shouldMirror()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    .line 415
    :cond_0
    iget v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    if-eq p1, v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, emptyView:Landroid/view/View;
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 422
    iput p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    .line 423
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 424
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->invalidate()V

    goto :goto_0
.end method

.method private updatePlaceHolders()V
    .locals 10

    .prologue
    .line 546
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 547
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 548
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 549
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 550
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 547
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 556
    .end local v5           #view:Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    iget v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I

    if-ge v8, v9, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 558
    .local v7, width:I
    iget v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I

    div-int v6, v7, v8

    .line 559
    .local v6, viewWidth:I
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 560
    .local v0, childCount:I
    move v2, v0

    :goto_1
    iget v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I

    if-ge v2, v8, :cond_2

    .line 561
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 563
    .local v4, placeHolder:Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 564
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 566
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 570
    .end local v0           #childCount:I
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #placeHolder:Landroid/view/View;
    .end local v6           #viewWidth:I
    .end local v7           #width:I
    :cond_2
    return-void
.end method


# virtual methods
.method public addApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V
    .locals 13
    .parameter "app"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 652
    .local v0, smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->isWidget()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "widget_counter"

    const-wide/16 v11, 0x0

    invoke-interface {v1, v2, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 654
    .local v4, widgetId:J
    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setupAsSmallAppWidget(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;J)V

    .line 656
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 657
    .local v8, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "widget_counter"

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    invoke-interface {v8, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 662
    .end local v4           #widgetId:J
    .end local v8           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 663
    invoke-virtual {v0, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->updateSortOrder()V

    .line 669
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 672
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingRight()I

    move-result v2

    sub-int v10, v1, v2

    .line 673
    .local v10, width:I
    if-lez v10, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 675
    .local v9, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I

    div-int v1, v10, v1

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 676
    invoke-virtual {v0, v9}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const v1, 0x7f0d0002

    invoke-virtual {p0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 681
    .local v6, addAppIcon:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mMaxSmallAppsInList:I

    if-ge v1, v2, :cond_3

    .line 682
    const v1, 0x7f02000a

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 687
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->updatePlaceHolders()V

    .line 690
    new-instance v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->post(Ljava/lang/Runnable;)Z

    .line 702
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet;

    .line 704
    .local v7, animatorSet:Landroid/animation/AnimatorSet;
    if-eqz v7, :cond_1

    .line 705
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 706
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 708
    :cond_1
    return-void

    .line 660
    .end local v6           #addAppIcon:Landroid/widget/ImageView;
    .end local v7           #animatorSet:Landroid/animation/AnimatorSet;
    .end local v10           #width:I
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setupAsSmallApp(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 684
    .restart local v6       #addAppIcon:Landroid/widget/ImageView;
    .restart local v10       #width:I
    :cond_3
    const v1, 0x7f02000c

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public addAppFromInstalledSmallApps()V
    .locals 2

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getAllInstalledSmallApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 723
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    const v1, 0x7f090011

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->addAppFromItemList(Ljava/util/ArrayList;I)V

    .line 724
    return-void
.end method

.method public addAppFromMarket()V
    .locals 2

    .prologue
    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    const-string v1, "market://search?q=\"Small apps extension for Sony products\""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 715
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 716
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->sendClickToTopView()V

    .line 717
    return-void
.end method

.method public addAppFromWidgets()V
    .locals 2

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getAllInstalledWidgets()Ljava/util/ArrayList;

    move-result-object v0

    .line 730
    .local v0, widgetsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    const v1, 0x7f090012

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->addAppFromItemList(Ljava/util/ArrayList;I)V

    .line 731
    return-void
.end method

.method public clearList()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 617
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 201
    .local v1, item:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->drawMoveModeAnimation(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 203
    .end local v1           #item:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->postInvalidate()V

    .line 205
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 206
    return-void
.end method

.method public getNumberOfNotUsedSmallApps()I
    .locals 2

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getAllInstalledSmallApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 760
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    invoke-direct {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getNumberOfNotUsedItemsInList(Ljava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public getNumberOfNotUsedWidgets()I
    .locals 2

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getAllInstalledWidgets()Ljava/util/ArrayList;

    move-result-object v0

    .line 766
    .local v0, widgetsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    invoke-direct {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getNumberOfNotUsedItemsInList(Ljava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public isDraggingSmallApp()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V
    .locals 1
    .parameter "app"
    .parameter "emptySlotIndex"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 640
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 641
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->remove(Ljava/lang/Object;)Z

    .line 642
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v0, p2, p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->add(ILjava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->updateSortOrder()V

    .line 644
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 592
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 601
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v2, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 603
    .local v1, smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->isWidget()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    invoke-direct {p0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->startSmallAppWidget(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V

    .line 609
    .end local v1           #smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :cond_0
    :goto_0
    return-void

    .line 606
    .restart local v1       #smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->startSmallApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 379
    const/4 v9, 0x0

    :goto_0
    return v9

    .line 285
    :pswitch_0
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    if-eqz v9, :cond_0

    .line 286
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    iput v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    .line 290
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 291
    .local v3, emptyView:Landroid/view/View;
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v9}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 292
    .local v7, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v9}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidth()I

    move-result v9

    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v9}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getHeight()I

    move-result v9

    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 297
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-virtual {v9, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 299
    .end local v3           #emptyView:Landroid/view/View;
    .end local v7           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    if-eqz v9, :cond_3

    .line 303
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 305
    :try_start_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    .line 306
    iget v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidth()I

    move-result v10

    div-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->updateEmptySlot(I)V

    .line 309
    iget v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 310
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v9

    if-nez v9, :cond_2

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v8

    .line 312
    .local v8, startX:I
    const-string v9, "updateScrollX"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 314
    int-to-float v9, v8

    const/high16 v10, 0x43af

    div-float/2addr v9, v10

    const/high16 v10, 0x447a

    mul-float/2addr v9, v10

    float-to-long v1, v9

    .line 315
    .local v1, duration:J
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v1           #duration:J
    .end local v8           #startX:I
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 341
    :cond_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 319
    :cond_4
    :try_start_1
    iget v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-le v9, v10, :cond_6

    .line 321
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v9

    if-nez v9, :cond_2

    .line 322
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v8

    .line 323
    .restart local v8       #startX:I
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getWidth()I

    move-result v10

    sub-int v4, v9, v10

    .line 324
    .local v4, endX:I
    const-string v9, "updateScrollX"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v11, 0x1

    aput v4, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 326
    sub-int v9, v8, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x43af

    div-float/2addr v9, v10

    const/high16 v10, 0x447a

    mul-float/2addr v9, v10

    float-to-long v1, v9

    .line 328
    .restart local v1       #duration:J
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 338
    .end local v1           #duration:J
    .end local v4           #endX:I
    .end local v8           #startX:I
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    .line 333
    :cond_6
    :try_start_2
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_2

    .line 334
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 344
    :pswitch_2
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    if-eqz v9, :cond_7

    .line 345
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iget v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-virtual {p0, v9, v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->moveApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    .line 348
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setDragging(Z)V

    .line 349
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v9}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 350
    .local v6, item:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v10

    invoke-virtual {v6}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getTop()I

    move-result v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setMoveModeEnabled(ZII)V

    goto :goto_2

    .line 354
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :cond_7
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 355
    const/4 v9, -0x1

    iput v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    .line 356
    const/4 v9, -0x1

    iput v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    .line 357
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 364
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    .line 365
    .local v0, droppedInside:Z
    if-nez v0, :cond_8

    .line 366
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "show_remove_dialog"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 367
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iget v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-static {p0, p0, v9, v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showRemoveDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    .line 374
    :cond_8
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 370
    :cond_9
    iget-object v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iget v10, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mCurrentEmptySlotIndex:I

    invoke-virtual {p0, v9, v10}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->removeApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    goto :goto_3

    .line 377
    .end local v0           #droppedInside:Z
    :pswitch_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "small_apps_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mPrefs:Landroid/content/SharedPreferences;

    .line 172
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I

    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mMaxSmallAppsInList:I

    .line 176
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 574
    instance-of v2, p1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 575
    check-cast v2, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iput-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 576
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v2, v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setDragging(Z)V

    .line 577
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v2, v4}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setPressed(Z)V

    .line 578
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    iget-object v5, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-direct {v2, v5}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v6, v2, v6, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 580
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 581
    .local v1, item:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getTop()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setMoveModeEnabled(ZII)V

    goto :goto_0

    .line 584
    .end local v1           #item:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->invalidate()V

    move v2, v3

    .line 587
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 181
    new-instance v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$1;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 193
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public populateWithSmallApps()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 213
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v8}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->populateWithSmallApps()V

    .line 214
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v8}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 218
    .local v6, smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    invoke-virtual {v6, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 219
    invoke-virtual {v6, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 224
    .end local v6           #smallApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;

    const/high16 v9, 0x7f03

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, addAppView:Landroid/view/View;
    const v8, 0x7f0d0002

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    .local v0, addAppIcon:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v8}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->size()I

    move-result v8

    iget v9, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mMaxSmallAppsInList:I

    if-ge v8, v9, :cond_1

    .line 227
    const v8, 0x7f02000a

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :goto_1
    const v8, 0x7f0d0001

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;

    invoke-direct {v9, p0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 260
    .local v7, width:I
    if-lez v7, :cond_2

    .line 261
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 262
    iget-object v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 264
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I

    div-int v8, v7, v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 265
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 229
    .end local v2           #child:Landroid/view/View;
    .end local v3           #i:I
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #width:I
    :cond_1
    const v8, 0x7f02000c

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 269
    .restart local v7       #width:I
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->updatePlaceHolders()V

    .line 270
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->shouldMirror()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 271
    new-instance v8, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$3;

    invoke-direct {v8, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$3;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)V

    invoke-virtual {p0, v8}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->post(Ljava/lang/Runnable;)Z

    .line 279
    :goto_3
    return-void

    .line 277
    :cond_3
    invoke-virtual {p0, v11, v11}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->scrollTo(II)V

    goto :goto_3
.end method

.method public removeApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V
    .locals 2
    .parameter "app"
    .parameter "emptySlotIndex"

    .prologue
    .line 621
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 622
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->remove(Ljava/lang/Object;)Z

    .line 623
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->updateSortOrder()V

    .line 626
    const v1, 0x7f0d0002

    invoke-virtual {p0, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 627
    .local v0, addAppIcon:Landroid/widget/ImageView;
    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->isWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-direct {p0, p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->deleteWidget(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->updatePlaceHolders()V

    .line 635
    return-void
.end method

.method setUpdateScrollX(I)V
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 389
    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v1

    .line 391
    .local v1, oldX:I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->smoothScrollTo(II)V

    .line 393
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 395
    :try_start_0
    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    invoke-virtual {p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    .line 396
    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragLocationX:I

    iget-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mDragApp:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    invoke-virtual {v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 397
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->updateEmptySlot(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    .end local v0           #index:I
    .end local v1           #oldX:I
    :cond_0
    return-void

    .line 399
    .restart local v1       #oldX:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
