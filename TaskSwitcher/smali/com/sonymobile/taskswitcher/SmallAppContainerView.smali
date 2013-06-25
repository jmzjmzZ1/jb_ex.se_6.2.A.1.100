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
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setupView(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setupView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setupView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private setupView(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 37
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, rootView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0, v2}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->addView(Landroid/view/View;)V

    .line 41
    :cond_0
    const-string v3, "com.sonymobile.taskswitcher.SMALL_APP_CONTAINER_VIEW_TAG"

    invoke-virtual {p0, v3}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 46
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.sony.smallapp.managerservice"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setVisibility(I)V

    goto :goto_0
.end method
