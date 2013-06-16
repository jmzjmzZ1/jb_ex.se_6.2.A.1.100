.class Lcom/android/phone/LargeCallView$3;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initComponents()V
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
    .line 301
    iput-object p1, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswerIncomingCall(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    #calls: Lcom/android/phone/LargeCallView;->animateHideIncomingCallView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/phone/LargeCallView;->access$100(Lcom/android/phone/LargeCallView;Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public onRejectIncomingCall(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 309
    return-void
.end method

.method public onRejectWithPredefinedMsg(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 315
    return-void
.end method
