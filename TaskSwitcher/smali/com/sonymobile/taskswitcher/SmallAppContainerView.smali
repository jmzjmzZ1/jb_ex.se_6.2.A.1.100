.class public Lcom/sonymobile/taskswitcher/SmallAppContainerView;
.super Landroid/widget/FrameLayout;
.source "SmallAppContainerView.java"


# static fields
.field public static final SMALL_APP_CONTAINER_VIEW_TAG:Ljava/lang/String; = "com.sonymobile.taskswitcher.SMALL_APP_CONTAINER_VIEW_TAG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setupView(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setupView(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setupView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private setupView(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 38
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, rootView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0, v2}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->addView(Landroid/view/View;)V

    .line 42
    :cond_0
    const-string v3, "com.sonymobile.taskswitcher.SMALL_APP_CONTAINER_VIEW_TAG"

    invoke-virtual {p0, v3}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 47
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.sony.smallapp.managerservice"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setVisibility(I)V

    goto :goto_0
.end method

# virtual methods
.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 62
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 63
    sget-object v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    .line 69
    :cond_0
    return-void
.end method
