.class Lcom/android/phone/NetworkSetting$7;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->createDisableDataAccessAlertDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 588
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$2500(Lcom/android/phone/NetworkSetting;Z)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting;->finish()V

    goto :goto_0
.end method
