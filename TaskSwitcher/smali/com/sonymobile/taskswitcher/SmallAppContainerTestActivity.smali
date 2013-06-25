.class public Lcom/sonymobile/taskswitcher/SmallAppContainerTestActivity;
.super Landroid/app/Activity;
.source "SmallAppContainerTestActivity.java"


# instance fields
.field private mContainer:Lcom/sonymobile/taskswitcher/SmallAppContainerView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/taskswitcher/SmallAppContainerTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getActivityHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/SmallAppContainerTestActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v2, Lcom/sonymobile/taskswitcher/SmallAppContainerView;

    invoke-direct {v2, p0}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/taskswitcher/SmallAppContainerTestActivity;->mContainer:Lcom/sonymobile/taskswitcher/SmallAppContainerView;

    .line 31
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/SmallAppContainerTestActivity;->mContainer:Lcom/sonymobile/taskswitcher/SmallAppContainerView;

    invoke-virtual {v2, v1}, Lcom/sonymobile/taskswitcher/SmallAppContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/SmallAppContainerTestActivity;->mContainer:Lcom/sonymobile/taskswitcher/SmallAppContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/sonymobile/taskswitcher/SmallAppContainerTestActivity;->setContentView(Landroid/view/View;)V

    .line 39
    return-void
.end method
