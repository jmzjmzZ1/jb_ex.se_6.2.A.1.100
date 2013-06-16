.class Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;
.super Landroid/os/AsyncTask;
.source "SecureElementListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/SecureElementListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectNfcAdapterExTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/SecureElementListPreference;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/SecureElementListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/SecureElementListPreference;Lcom/sonymobile/settings/SecureElementListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/settings/SecureElementListPreference;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "param"

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    new-instance v1, Lcom/sonymobile/nfc/NfcExtension;

    invoke-direct {v1}, Lcom/sonymobile/nfc/NfcExtension;-><init>()V

    #setter for: Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;
    invoke-static {v0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->access$102(Lcom/sonymobile/settings/SecureElementListPreference;Lcom/sonymobile/nfc/NfcExtension;)Lcom/sonymobile/nfc/NfcExtension;

    .line 190
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    #getter for: Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;
    invoke-static {v0}, Lcom/sonymobile/settings/SecureElementListPreference;->access$100(Lcom/sonymobile/settings/SecureElementListPreference;)Lcom/sonymobile/nfc/NfcExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v1}, Lcom/sonymobile/settings/SecureElementListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcExtension;->connect(Landroid/content/Context;)V

    .line 191
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 196
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "errorFlag"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #setter for: Lcom/sonymobile/settings/SecureElementListPreference;->mSecureElementsError:Z
    invoke-static {v1, v2}, Lcom/sonymobile/settings/SecureElementListPreference;->access$202(Lcom/sonymobile/settings/SecureElementListPreference;Z)Z

    .line 202
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    #getter for: Lcom/sonymobile/settings/SecureElementListPreference;->mSecureElementsError:Z
    invoke-static {v1}, Lcom/sonymobile/settings/SecureElementListPreference;->access$200(Lcom/sonymobile/settings/SecureElementListPreference;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    #getter for: Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;
    invoke-static {v1}, Lcom/sonymobile/settings/SecureElementListPreference;->access$100(Lcom/sonymobile/settings/SecureElementListPreference;)Lcom/sonymobile/nfc/NfcExtension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcExtension;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    iget-object v2, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    #getter for: Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;
    invoke-static {v2}, Lcom/sonymobile/settings/SecureElementListPreference;->access$100(Lcom/sonymobile/settings/SecureElementListPreference;)Lcom/sonymobile/nfc/NfcExtension;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/nfc/NfcExtension;->getSupportedSEs()[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sonymobile/settings/SecureElementListPreference;->mSupportedSecureElements:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonymobile/settings/SecureElementListPreference;->access$302(Lcom/sonymobile/settings/SecureElementListPreference;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    #calls: Lcom/sonymobile/settings/SecureElementListPreference;->setupSecureElementsMenu()V
    invoke-static {v1}, Lcom/sonymobile/settings/SecureElementListPreference;->access$400(Lcom/sonymobile/settings/SecureElementListPreference;)V

    .line 214
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/settings/SecureElementListPreference;

    const/4 v2, 0x1

    #setter for: Lcom/sonymobile/settings/SecureElementListPreference;->mSecureElementsError:Z
    invoke-static {v1, v2}, Lcom/sonymobile/settings/SecureElementListPreference;->access$202(Lcom/sonymobile/settings/SecureElementListPreference;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
