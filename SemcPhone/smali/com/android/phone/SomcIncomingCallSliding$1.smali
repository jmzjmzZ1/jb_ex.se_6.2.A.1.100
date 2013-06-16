.class Lcom/android/phone/SomcIncomingCallSliding$1;
.super Ljava/lang/Object;
.source "SomcIncomingCallSliding.java"

# interfaces
.implements Lcom/android/phone/SomcSlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcIncomingCallSliding;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSliderHintToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/phone/SomcIncomingCallSliding;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcIncomingCallSliding;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearToast()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    .line 106
    :cond_0
    return-void
.end method

.method private showSliderHintToast(I)V
    .locals 7
    .parameter "notifyId"

    .prologue
    .line 69
    iget-object v4, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    invoke-virtual {v4}, Lcom/android/phone/SomcIncomingCallSliding;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03001a

    iget-object v4, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    const v6, 0x7f070072

    invoke-virtual {v4, v6}, Lcom/android/phone/SomcIncomingCallSliding;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, layout:Landroid/view/View;
    const v4, 0x7f070073

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/phone/SomcIncomingCallSliding$1;->clearToast()V

    .line 75
    new-instance v4, Landroid/widget/Toast;

    iget-object v5, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    invoke-virtual {v5}, Lcom/android/phone/SomcIncomingCallSliding;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    .line 76
    iget-object v4, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 77
    iget-object v4, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 78
    iget-object v4, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, textView:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v4, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->mSliderHintToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 81
    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 99
    return-void
.end method

.method public onTap(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "tapState"

    .prologue
    const/4 v1, 0x0

    .line 47
    packed-switch p2, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    #getter for: Lcom/android/phone/SomcIncomingCallSliding;->mShowLeftHint:Z
    invoke-static {v0}, Lcom/android/phone/SomcIncomingCallSliding;->access$000(Lcom/android/phone/SomcIncomingCallSliding;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x7f0b00fb

    invoke-direct {p0, v0}, Lcom/android/phone/SomcIncomingCallSliding$1;->showSliderHintToast(I)V

    .line 51
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    #setter for: Lcom/android/phone/SomcIncomingCallSliding;->mShowLeftHint:Z
    invoke-static {v0, v1}, Lcom/android/phone/SomcIncomingCallSliding;->access$002(Lcom/android/phone/SomcIncomingCallSliding;Z)Z

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    #getter for: Lcom/android/phone/SomcIncomingCallSliding;->mShowRightHint:Z
    invoke-static {v0}, Lcom/android/phone/SomcIncomingCallSliding;->access$100(Lcom/android/phone/SomcIncomingCallSliding;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const v0, 0x7f0b00fc

    invoke-direct {p0, v0}, Lcom/android/phone/SomcIncomingCallSliding$1;->showSliderHintToast(I)V

    .line 57
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    #setter for: Lcom/android/phone/SomcIncomingCallSliding;->mShowRightHint:Z
    invoke-static {v0, v1}, Lcom/android/phone/SomcIncomingCallSliding;->access$102(Lcom/android/phone/SomcIncomingCallSliding;Z)Z

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 84
    packed-switch p2, :pswitch_data_0

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/SomcIncomingCallSliding$1;->clearToast()V

    .line 96
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    iget-object v0, v0, Lcom/android/phone/SomcIncomingCallSliding;->mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    invoke-interface {v0, p1}, Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;->onAnswerIncomingCall(Landroid/view/View;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    iget-object v0, v0, Lcom/android/phone/SomcIncomingCallSliding;->mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    invoke-interface {v0, p1}, Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;->onRejectIncomingCall(Landroid/view/View;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
