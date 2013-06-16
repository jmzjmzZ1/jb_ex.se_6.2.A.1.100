.class Lcom/android/phone/SomcCallIllumination$2;
.super Landroid/content/BroadcastReceiver;
.source "SomcCallIllumination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallIllumination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallIllumination;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallIllumination;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/phone/SomcCallIllumination$2;->this$0:Lcom/android/phone/SomcCallIllumination;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 396
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 398
    .local v1, isWaittingCall:Z
    :goto_0
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 399
    iget-object v3, p0, Lcom/android/phone/SomcCallIllumination$2;->this$0:Lcom/android/phone/SomcCallIllumination;

    const-string v4, "Screen is on, start the ongoing call illumination."

    #calls: Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallIllumination;->access$200(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V

    .line 400
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SomcCallIllumination$2;->this$0:Lcom/android/phone/SomcCallIllumination;

    const/4 v4, -0x1

    sget-object v5, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->LIGHTON:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    #calls: Lcom/android/phone/SomcCallIllumination;->internalStartIllumination(ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/SomcCallIllumination;->access$300(Lcom/android/phone/SomcCallIllumination;ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V

    .line 411
    :cond_1
    :goto_1
    return-void

    .end local v1           #isWaittingCall:Z
    :cond_2
    move v1, v3

    .line 396
    goto :goto_0

    .line 403
    .restart local v1       #isWaittingCall:Z
    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, p0, Lcom/android/phone/SomcCallIllumination$2;->this$0:Lcom/android/phone/SomcCallIllumination;

    const-string v5, "Screen is off, stop the ongoing call illumination."

    #calls: Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/SomcCallIllumination;->access$200(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V

    .line 405
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v4, :cond_4

    if-eqz v1, :cond_5

    .line 406
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SomcCallIllumination$2;->this$0:Lcom/android/phone/SomcCallIllumination;

    const-string v4, "com.sonyericsson.illumination.intent.extra.value.BUTTON_2"

    #calls: Lcom/android/phone/SomcCallIllumination;->interalStopIllumination(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallIllumination;->access$400(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_1

    if-nez v1, :cond_1

    .line 408
    iget-object v4, p0, Lcom/android/phone/SomcCallIllumination$2;->this$0:Lcom/android/phone/SomcCallIllumination;

    invoke-virtual {v4, v3, v3}, Lcom/android/phone/SomcCallIllumination;->stopIlluminationForRingingCall(ZZ)V

    goto :goto_1
.end method
