.class public Lcom/android/systemui/recent/RemotePluginView;
.super Landroid/widget/FrameLayout;
.source "RemotePluginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sExternalPackage:Landroid/content/ComponentName;


# instance fields
.field private mExternalView:Landroid/view/View;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->setupExternalView(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->setupExternalView(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->setupExternalView(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private static createExternalContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 105
    .local v0, newContext:Landroid/content/Context;
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getExternalPackage(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 125
    .local v2, info:Landroid/content/ComponentName;
    sget-object v6, Lcom/android/systemui/recent/RemotePluginView;->sExternalPackage:Landroid/content/ComponentName;

    if-nez v6, :cond_2

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 127
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 129
    .local v3, packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 130
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 132
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.sonymobile.taskswitcher.PLUGIN_VIEW"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 135
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #info:Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .restart local v2       #info:Landroid/content/ComponentName;
    :cond_1
    sput-object v2, Lcom/android/systemui/recent/RemotePluginView;->sExternalPackage:Landroid/content/ComponentName;

    .line 144
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 142
    :cond_2
    sget-object v2, Lcom/android/systemui/recent/RemotePluginView;->sExternalPackage:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static getExternalTaskSwitcher(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter "context"

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, taskSwitcher:Landroid/view/View;
    invoke-static {p0}, Lcom/android/systemui/recent/RemotePluginView;->getExternalPackage(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 231
    .local v3, taskSwitcherInfo:Landroid/content/ComponentName;
    invoke-static {p0, v3}, Lcom/android/systemui/recent/RemotePluginView;->validateExternal(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    .line 235
    .local v4, validationOk:Z
    if-eqz v4, :cond_0

    .line 236
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/android/systemui/recent/RemotePluginView;->createExternalContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 238
    .local v2, taskSwitcherContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 240
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-static {v0, v3, v2}, Lcom/android/systemui/recent/RemotePluginView;->instantiateExternalTaskSwitcher(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 245
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v2           #taskSwitcherContext:Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method private getRecentsPanel()Lcom/android/systemui/recent/RecentsPanelView;
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/recent/RemotePluginView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 265
    .local v1, root:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 266
    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView;

    .line 270
    .local v0, recentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    :goto_0
    return-object v0

    .line 268
    .end local v0           #recentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #recentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    goto :goto_0
.end method

.method private static instantiateExternalTaskSwitcher(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 178
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 180
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 216
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 190
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 194
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 199
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 204
    :catch_5
    move-exception v0

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 209
    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private setupExternalView(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p1}, Lcom/android/systemui/recent/RemotePluginView;->getExternalTaskSwitcher(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mExternalView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mExternalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mExternalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RemotePluginView;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mExternalView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private static validateExternal(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 154
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "com.sonymobile.permission.TASK_SWITCHER_PLUGIN_VIEW"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 162
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/recent/RemotePluginView;->getRecentsPanel()Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 256
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mExternalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 91
    const/16 p1, 0x8

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    return-void
.end method
