.class Lcom/android/phone/SomcCallEndedInteractionActivity$1;
.super Landroid/os/Handler;
.source "SomcCallEndedInteractionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallEndedInteractionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallEndedInteractionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mHungupIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$000(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mCallEndedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$100(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$200(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mHungupIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$000(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 87
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    #getter for: Lcom/android/phone/SomcCallEndedInteractionActivity;->mCallEndedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->access$100(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;->this$0:Lcom/android/phone/SomcCallEndedInteractionActivity;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->finish()V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
