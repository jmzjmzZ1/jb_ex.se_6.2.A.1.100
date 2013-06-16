.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/SecureElementListPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBoxPreference"
    .parameter "androidBeam"
    .parameter "secureElements"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 64
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 65
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    .line 66
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 68
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setEnabled(Z)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v0, v2}, Lcom/sonymobile/settings/SecureElementListPreference;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0208

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0209

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/SecureElementListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 100
    .local v0, desiredState:Z
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 108
    :goto_0
    return v2

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
