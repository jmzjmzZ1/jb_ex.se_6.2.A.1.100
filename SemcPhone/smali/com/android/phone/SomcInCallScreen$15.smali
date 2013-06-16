.class Lcom/android/phone/SomcInCallScreen$15;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2816
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$15;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2818
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2819
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$15;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v1, "Dismiss voicemail AlertDialog: CANCEL handler..."

    #calls: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$15;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2821
    return-void
.end method
