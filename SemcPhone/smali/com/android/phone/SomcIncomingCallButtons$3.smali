.class Lcom/android/phone/SomcIncomingCallButtons$3;
.super Ljava/lang/Object;
.source "SomcIncomingCallButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcIncomingCallButtons;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcIncomingCallButtons;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcIncomingCallButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/SomcIncomingCallButtons$3;->this$0:Lcom/android/phone/SomcIncomingCallButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallButtons$3;->this$0:Lcom/android/phone/SomcIncomingCallButtons;

    iget-object v0, v0, Lcom/android/phone/SomcIncomingCallButtons;->mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    iget-object v1, p0, Lcom/android/phone/SomcIncomingCallButtons$3;->this$0:Lcom/android/phone/SomcIncomingCallButtons;

    invoke-interface {v0, v1}, Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;->onRejectWithPredefinedMsg(Landroid/view/View;)V

    .line 51
    return-void
.end method
