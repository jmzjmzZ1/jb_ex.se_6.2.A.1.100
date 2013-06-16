.class public Lcom/sonymobile/settings/SecureElementListPreference;
.super Landroid/preference/ListPreference;
.source "SecureElementListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/SecureElementListPreference$1;,
        Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;
    }
.end annotation


# instance fields
.field private mNfcCheckbox:Landroid/preference/CheckBoxPreference;

.field private mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSecureElementsError:Z

.field private mSupportedSecureElements:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    .line 29
    iput-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcCheckbox:Landroid/preference/CheckBoxPreference;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/SecureElementListPreference;)Lcom/sonymobile/nfc/NfcExtension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/settings/SecureElementListPreference;Lcom/sonymobile/nfc/NfcExtension;)Lcom/sonymobile/nfc/NfcExtension;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/SecureElementListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mSecureElementsError:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/settings/SecureElementListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mSecureElementsError:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sonymobile/settings/SecureElementListPreference;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mSupportedSecureElements:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/SecureElementListPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->setupSecureElementsMenu()V

    return-void
.end method

.method private getActiveSecureElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcExtension;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcExtension;->getCurrentSE()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberOfAvailableSecureElements()I
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, ret:I
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mSupportedSecureElements:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mSupportedSecureElements:[Ljava/lang/String;

    array-length v0, v1

    .line 129
    :cond_0
    return v0
.end method

.method private setupSecureElementsList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->getNumberOfAvailableSecureElements()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->getActiveSecureElement()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, currentSE:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 142
    .local v1, selectable:Z
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/SecureElementListPreference;->setValueIndex(I)V

    .line 149
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setSelectable(Z)V

    .line 156
    .end local v0           #currentSE:Ljava/lang/String;
    .end local v1           #selectable:Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->setSelectedSecureElementSummary()V

    .line 157
    return-void

    .line 144
    .restart local v0       #currentSE:Ljava/lang/String;
    .restart local v1       #selectable:Z
    :cond_1
    const-string v2, "SMX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/SecureElementListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 147
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    .end local v0           #currentSE:Ljava/lang/String;
    .end local v1           #selectable:Z
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/SecureElementListPreference;->setSelectable(Z)V

    goto :goto_1
.end method

.method private setupSecureElementsMenu()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mSecureElementsError:Z

    if-eqz v0, :cond_0

    .line 96
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->getNumberOfAvailableSecureElements()I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->setupSecureElementsList()V

    .line 99
    invoke-virtual {p0, p0}, Lcom/sonymobile/settings/SecureElementListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public initalizeSecureElements()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/settings/SecureElementListPreference;Lcom/sonymobile/settings/SecureElementListPreference$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/SecureElementListPreference$ConnectNfcAdapterExTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    invoke-virtual {v2}, Lcom/sonymobile/nfc/NfcExtension;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    move-object v1, p2

    .line 68
    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, prefValue:Ljava/lang/String;
    :try_start_0
    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/NfcExtension;->setCurrentSE(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->setSelectedSecureElementSummary()V

    .line 80
    :goto_1
    const/4 v2, 0x1

    .line 82
    .end local v1           #prefValue:Ljava/lang/String;
    :goto_2
    return v2

    .line 72
    .restart local v1       #prefValue:Ljava/lang/String;
    :cond_1
    const-string v2, "SMX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    const-string v3, "SMX"

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/NfcExtension;->setCurrentSE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    const v2, 0x7f0b005d

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    goto :goto_1

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #prefValue:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcExtension;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcExtension;->close()V

    .line 49
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/SecureElementListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->initalizeSecureElements()V

    .line 54
    return-void
.end method

.method public setDependency(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "inPreferenceScreen"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 42
    iget-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "toggle_nfc"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcCheckbox:Landroid/preference/CheckBoxPreference;

    .line 43
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->setSelectedSecureElementSummary()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public setSelectedSecureElementSummary()V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/SecureElementListPreference;->mNfcExtension:Lcom/sonymobile/nfc/NfcExtension;

    if-eqz v1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/sonymobile/settings/SecureElementListPreference;->getActiveSecureElement()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, currentSE:Ljava/lang/String;
    const-string v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    .line 180
    .end local v0           #currentSE:Ljava/lang/String;
    :goto_0
    return-void

    .line 169
    .restart local v0       #currentSE:Ljava/lang/String;
    :cond_0
    const-string v1, "SMX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const v1, 0x7f0b005b

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    goto :goto_0

    .line 174
    :cond_1
    const v1, 0x7f0b005c

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    goto :goto_0

    .line 178
    .end local v0           #currentSE:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0b0059

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    goto :goto_0
.end method
