.class public Lcom/android/phone/DataTrafficSwitchDialog;
.super Landroid/app/Activity;
.source "DataTrafficSwitchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private okIndicatedEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->okIndicatedEnable:Z

    return-void
.end method

.method private isDataTrafficEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, mCM:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 123
    const-string v0, "DataTrafficSwitchDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method private setDataTraffic(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 89
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataTraffic enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 90
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    .local v0, mCM:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "which"

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onClick"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 113
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 114
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onClick, BUTTON_POSITIVE"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/DataTrafficSwitchDialog;->okIndicatedEnable:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->setDataTraffic(Landroid/content/Context;Z)V

    .line 119
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->finish()V

    .line 120
    return-void

    .line 116
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 117
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onClick, BUTTON_NEGATIVE"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->switchData()V

    .line 36
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDismiss"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->finish()V

    .line 129
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->finish()V

    .line 139
    return-void
.end method

.method public showPopup(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 95
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "showPopup"

    invoke-direct {p0, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2

    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 99
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 100
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 101
    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Done with builder"

    invoke-direct {p0, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 106
    iget-object v1, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 108
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 109
    return-void
.end method

.method public switchData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DataTrafficSwitchDialog;->isDataTrafficEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 55
    .local v1, enabled:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataTrafficEnabled? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 56
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/phone/DataTrafficSwitchDialog;->setDataTraffic(Landroid/content/Context;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->finish()V

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 65
    .local v0, disableChargePopups:Z
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/phone/DataTrafficSwitchDialog;->setDataTraffic(Landroid/content/Context;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->finish()V

    goto :goto_0

    .line 69
    :cond_1
    const v2, 0x7f0b0087

    .line 71
    .local v2, stringId:I
    iput-boolean v5, p0, Lcom/android/phone/DataTrafficSwitchDialog;->okIndicatedEnable:Z

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/phone/DataTrafficSwitchDialog;->showPopup(I)V

    goto :goto_0
.end method
