.class Lcom/android/settings/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 166
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "plmn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, plmn:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v2, "operator_name"

    #calls: Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/deviceinfo/Status;->access$200(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0           #plmn:Ljava/lang/String;
    :cond_0
    return-void
.end method
