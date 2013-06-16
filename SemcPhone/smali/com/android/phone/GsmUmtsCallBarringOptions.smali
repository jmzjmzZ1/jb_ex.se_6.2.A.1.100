.class public Lcom/android/phone/GsmUmtsCallBarringOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallBarringOptions.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonChangePW:Lcom/android/phone/EditPinPreference;

.field private mButtonDeaAll:Lcom/android/phone/EditPinPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallBarringEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPwChangeState:I

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    .line 188
    new-instance v0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsCallBarringOptions$1;-><init>(Lcom/android/phone/GsmUmtsCallBarringOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method private DeactivateAllBarring(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, password:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 117
    const v0, 0x7f0b00f1

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->myHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 123
    .local v5, onComplete:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 125
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsCallBarringOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/GsmUmtsCallBarringOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GsmUmtsCallBarringOptions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetCallBarringPrefState(Z)V

    return-void
.end method

.method private final displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method

.method private final displayPwChangeDialog()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    .line 246
    return-void
.end method

.method private final displayPwChangeDialog(IZ)V
    .locals 4
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, msgId:I
    iget v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    packed-switch v1, :pswitch_data_0

    .line 263
    :goto_0
    if-eqz p1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 270
    :goto_1
    if-eqz p2, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 273
    :cond_0
    return-void

    .line 252
    :pswitch_0
    const v0, 0x7f0b00f5

    .line 253
    goto :goto_0

    .line 255
    :pswitch_1
    const v0, 0x7f0b00f6

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    const v0, 0x7f0b00f7

    goto :goto_0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final resetCallBarringPrefState(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringEditPreference;

    .line 290
    .local v1, pref:Lcom/android/phone/CallBarringEditPreference;
    iput-boolean p1, v1, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    .line 291
    invoke-virtual {v1}, Lcom/android/phone/CallBarringEditPreference;->updateSummaryText()V

    goto :goto_0

    .line 293
    .end local v1           #pref:Lcom/android/phone/CallBarringEditPreference;
    :cond_0
    return-void
.end method

.method private final resetPwChangeState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 280
    invoke-direct {p0, v0, v0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    .line 283
    return-void
.end method

.method private updatePWChangeState(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const v4, 0x7f0b00f1

    const/4 v3, 0x1

    .line 132
    if-nez p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V

    .line 183
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->validatePassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 150
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog()V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->validatePassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 160
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog()V

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 170
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 171
    const v1, 0x7f0b00ef

    invoke-direct {p0, v1, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->myHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "AB"

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telephony/Phone;->changeCallBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 179
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onStarted(Landroid/preference/Preference;Z)V

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .parameter "password"

    .prologue
    .line 302
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 311
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 312
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 313
    const-string v1, "GsmUmtsCallBarringOptions"

    const-string v2, "onCreate, reading callbarring_options.xml file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->addPreferencesFromResource(I)V

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 317
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    .line 318
    const-string v1, "GsmUmtsCallBarringOptions"

    const-string v2, "onCreate, reading callbarring_options.xml file finished!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 322
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_baoc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

    .line 323
    const-string v1, "button_baoic_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

    .line 324
    const-string v1, "button_baoicxh_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

    .line 325
    const-string v1, "button_baic_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

    .line 326
    const-string v1, "button_baicr_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

    .line 327
    const-string v1, "button_ba_all_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    .line 328
    const-string v1, "button_change_pw_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    .line 331
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallBarringEditPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallBarringEditPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 333
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallBarringEditPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 334
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallBarringEditPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 335
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallBarringEditPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 336
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 337
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 339
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 348
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 357
    :goto_0
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mFirstResume:Z

    .line 358
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    .line 359
    return-void

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 351
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 409
    iget v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    .line 411
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallBarringEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 413
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 414
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 1
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_1

    .line 91
    invoke-direct {p0, p2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->updatePWChangeState(Z)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 93
    invoke-direct {p0, p2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->DeactivateAllBarring(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 363
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 365
    iget-boolean v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mFirstResume:Z

    if-eqz v3, :cond_1

    .line 366
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 367
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    .line 368
    const-string v3, "GsmUmtsCallBarringOptions"

    const-string v4, "start to init "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V

    .line 370
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v3, p0, v6}, Lcom/android/phone/CallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 387
    :goto_0
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mFirstResume:Z

    .line 388
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    .line 390
    :cond_1
    return-void

    .line 372
    :cond_2
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    .line 373
    const-string v3, "GsmUmtsCallBarringOptions"

    const-string v4, "restore stored states"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_3
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    .line 376
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    .line 377
    .local v2, pref:Lcom/android/phone/CallBarringEditPreference;
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v2}, Lcom/android/phone/CallBarringEditPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 378
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CallBarringEditPreference;->handleCallBarringResult(Z)V

    .line 379
    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_1

    .line 381
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallBarringEditPreference;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v4, "pin_change_state_key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 382
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v4, "OLD_PW_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    .line 383
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v4, "NEW_PW_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    .line 384
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v5, "dialog_message_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v5, "DIALOG_PW_ENTRY_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    .line 397
    .local v2, pref:Lcom/android/phone/CallBarringEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    iget-boolean v4, v2, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    invoke-virtual {v2}, Lcom/android/phone/CallBarringEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 401
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallBarringEditPreference;
    :cond_0
    const-string v3, "pin_change_state_key"

    iget v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string v3, "OLD_PW_KEY"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v3, "NEW_PW_KEY"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v3, "dialog_message_key"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v3, "DIALOG_PW_ENTRY_KEY"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method
