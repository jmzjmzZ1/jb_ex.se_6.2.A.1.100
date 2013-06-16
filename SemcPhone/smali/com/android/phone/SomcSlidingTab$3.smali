.class Lcom/android/phone/SomcSlidingTab$3;
.super Ljava/lang/Object;
.source "SomcSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcSlidingTab;->moveAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcSlidingTab;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcSlidingTab;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/phone/SomcSlidingTab$3;->this$0:Lcom/android/phone/SomcSlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$3;->this$0:Lcom/android/phone/SomcSlidingTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 733
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 729
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 726
    return-void
.end method
