.class public Lcom/android/phone/SomcRejectMsgSetting;
.super Landroid/preference/PreferenceActivity;
.source "SomcRejectMsgSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcRejectMsgSetting$UpdateCallback;
    }
.end annotation


# instance fields
.field private final mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/phone/SomcRejectMsgSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcRejectMsgSetting$1;-><init>(Lcom/android/phone/SomcRejectMsgSetting;)V

    iput-object v0, p0, Lcom/android/phone/SomcRejectMsgSetting;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private setRejectMsgs(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SomcRejectMsgSetting"

    const-string v6, "setRejectMsgs"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    const/4 v3, 0x0

    .line 95
    .local v3, pref:Lcom/android/phone/MultiLineTitleEditTextPreference;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    .local v2, m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 97
    .local v1, key:Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 98
    .local v4, value:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SomcRejectMsgSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messages map key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key_reject_msg_preference_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcRejectMsgSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #pref:Lcom/android/phone/MultiLineTitleEditTextPreference;
    check-cast v3, Lcom/android/phone/MultiLineTitleEditTextPreference;

    .line 101
    .restart local v3       #pref:Lcom/android/phone/MultiLineTitleEditTextPreference;
    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v3, v4}, Lcom/android/phone/MultiLineTitleEditTextPreference;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/android/phone/SomcRejectMsgSetting;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v5}, Lcom/android/phone/MultiLineTitleEditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 105
    .end local v1           #key:Ljava/lang/Integer;
    .end local v2           #m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcRejectMsgSetting;->addPreferencesFromResource(I)V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 87
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgs()Ljava/util/HashMap;

    move-result-object v0

    .line 89
    .local v0, settingMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/phone/SomcRejectMsgSetting;->setRejectMsgs(Ljava/util/HashMap;)V

    .line 90
    return-void
.end method
