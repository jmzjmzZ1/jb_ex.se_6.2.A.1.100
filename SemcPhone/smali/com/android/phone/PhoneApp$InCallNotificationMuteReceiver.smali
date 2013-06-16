.class Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallNotificationMuteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2176
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.phone.ACTION_SET_MUTE_FROM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2181
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2182
    const-string v1, "PhoneApp"

    const-string v2, "InCallNotificationMuteReceiver: ACTION_MUTE_ONGOING_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2189
    iget-object v1, p0, Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2191
    iget-object v1, p0, Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/SomcInCallScreen;->updateMicIsMuted()V

    .line 2193
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 2195
    :cond_2
    return-void

    .line 2184
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
