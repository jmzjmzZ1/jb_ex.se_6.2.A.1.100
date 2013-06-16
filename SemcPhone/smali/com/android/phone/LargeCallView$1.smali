.class Lcom/android/phone/LargeCallView$1;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initPopupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/LargeCallView;->mBluetoothAudioIsOn:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x14

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 221
    :cond_0
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/LargeCallView;->mSpeakerIsOn:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x12

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_1

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/LargeCallView;->mSpeakerIsOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/LargeCallView;->mBluetoothAudioIsOn:Z

    if-eqz v0, :cond_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x13

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_1

    .line 197
    :pswitch_data_0
    .packed-switch 0x7f0700b1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
