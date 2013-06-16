.class public Lcom/android/phone/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFdnList:Landroid/preference/PreferenceScreen;

.field private mFDNHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPUK2:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mSkipOldPin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 239
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/FdnSetting;Lcom/android/phone/EditPinPreference;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/FdnSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method private final displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    return-void
.end method

.method private final displayMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    return-void
.end method

.method private final displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 354
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 355
    return-void
.end method

.method private final displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V
    .locals 3
    .parameter "button"
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 360
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_0

    .line 376
    const v0, 0x7f0b02c6

    .line 381
    .local v0, msgId:I
    :goto_0
    if-eqz p2, :cond_2

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 388
    :goto_1
    if-eqz p3, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 391
    :cond_0
    return-void

    .line 362
    .end local v0           #msgId:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v1, :cond_1

    .line 363
    const v0, 0x7f0b02bc

    .restart local v0       #msgId:I
    goto :goto_0

    .line 365
    .end local v0           #msgId:I
    :cond_1
    const v0, 0x7f0b02bd

    .line 367
    .restart local v0       #msgId:I
    goto :goto_0

    .line 369
    .end local v0           #msgId:I
    :pswitch_1
    const v0, 0x7f0b02be

    .line 370
    .restart local v0       #msgId:I
    goto :goto_0

    .line 372
    .end local v0           #msgId:I
    :pswitch_2
    const v0, 0x7f0b02bf

    .line 373
    .restart local v0       #msgId:I
    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDialogShown()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final resetPinChangeState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 398
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 399
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 402
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 409
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 410
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPUK2:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 415
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 116
    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v3, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 139
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, password:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 129
    .local v0, isEnabled:Z
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, onComplete:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 138
    .end local v0           #isEnabled:Z
    .end local v1           #onComplete:Landroid/os/Message;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_3
    const v3, 0x7f0b02c3

    invoke-direct {p0, v3}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_1
.end method

.method private updateEnableFDN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b0286

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 446
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 447
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b0284

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 457
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting;->showDialog(I)V

    .line 463
    :goto_1
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 471
    :goto_2
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b0287

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 450
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b0282

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 451
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b0283

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_1

    .line 461
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    goto :goto_1

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 468
    const v0, 0x7f0b0288

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_2
.end method

.method private updatePINChangeState(Lcom/android/phone/EditPinPreference;Z)V
    .locals 5
    .parameter "button"
    .parameter "positiveResult"

    .prologue
    const v4, 0x7f0b02c3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 145
    if-nez p2, :cond_1

    .line 147
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 234
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    .line 164
    :cond_1
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 167
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-direct {p0, p1, v4, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 178
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V

    goto :goto_0

    .line 184
    :cond_3
    invoke-direct {p0, p1, v4, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 191
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 192
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 193
    const v1, 0x7f0b02c2

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto :goto_0

    .line 197
    :cond_4
    const/4 v0, 0x0

    .line 198
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v1, :cond_5

    .line 199
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 205
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_6

    .line 206
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 202
    :cond_5
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 209
    :cond_6
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPUK2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 214
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_7
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p1, v4, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto/16 :goto_0

    .line 222
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPUK2:Ljava/lang/String;

    .line 223
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPUK2:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 226
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 227
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V

    goto/16 :goto_0

    .line 229
    :cond_8
    const v1, 0x7f0b02c4

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto/16 :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 427
    if-eqz p2, :cond_1

    move v0, v1

    .line 430
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 431
    :cond_0
    const/4 v1, 0x0

    .line 433
    :goto_1
    return v1

    .line 427
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 433
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 477
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 479
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 482
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 483
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_fdn_enable_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 484
    const-string v1, "button_change_pin2_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 485
    const-string v1, "button_fdn_list_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    .line 488
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 490
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 493
    if-eqz p1, :cond_0

    .line 494
    const-string v1, "skip_old_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 495
    const-string v1, "pin_change_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 496
    const-string v1, "old_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 497
    const-string v1, "new_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 498
    const-string v1, "puk_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPUK2:Ljava/lang/String;

    .line 499
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_message_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_pin_entry_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v2, "fdn_dialog_message_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v2, "fdn_dialog_pin_entry_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f0b018f

    const/16 v3, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x3

    .line 550
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    .line 551
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00d6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$2;-><init>(Lcom/android/phone/FdnSetting;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 557
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 558
    invoke-virtual {p0, v7}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$3;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$3;-><init>(Lcom/android/phone/FdnSetting;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 592
    .end local v0           #alert:Landroid/app/AlertDialog;
    :goto_0
    return-object v0

    .line 567
    :cond_0
    if-eq p1, v3, :cond_1

    const/16 v2, 0xb

    if-ne p1, v2, :cond_3

    .line 569
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 571
    .local v1, button:Lcom/android/phone/EditPinPreference;
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b02c8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$4;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/FdnSetting$4;-><init>(Lcom/android/phone/FdnSetting;Lcom/android/phone/EditPinPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 580
    .restart local v0       #alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 581
    invoke-virtual {p0, v7}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$5;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/FdnSetting$5;-><init>(Lcom/android/phone/FdnSetting;Lcom/android/phone/EditPinPreference;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 569
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #button:Lcom/android/phone/EditPinPreference;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    goto :goto_1

    .line 592
    :cond_3
    const/4 v2, 0x0

    invoke-super {p0, p1, v2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 1
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 104
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Lcom/android/phone/EditPinPreference;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 508
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 509
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 511
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->isDialogShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 514
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 527
    const-string v1, "skip_old_pin_key"

    iget-boolean v2, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    const-string v1, "pin_change_state_key"

    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string v1, "old_pin_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v1, "new_pin_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v1, "puk_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPUK2:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 534
    .local v0, dialogMsg:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 535
    const-string v1, "dialog_message_key"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    const-string v1, "dialog_pin_entry_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .end local v0           #dialogMsg:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 541
    .restart local v0       #dialogMsg:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 542
    const-string v1, "fdn_dialog_message_key"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_2
    const-string v1, "fdn_dialog_pin_entry_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .end local v0           #dialogMsg:Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method
