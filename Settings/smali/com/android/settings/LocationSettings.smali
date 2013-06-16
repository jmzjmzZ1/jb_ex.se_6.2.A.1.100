.class public Lcom/android/settings/LocationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/SwitchPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 88
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 91
    :cond_0
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 94
    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    .line 95
    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v1, "location_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v1, "assisted_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 99
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->customizePreferences()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->customizeOnResume()V

    .line 105
    return-object v0
.end method

.method private onToggleLocationAccess(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 185
    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    .line 188
    return-void
.end method

.method private updateLocationToggles()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 157
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 159
    .local v0, gpsEnabled:Z
    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 161
    .local v1, networkEnabled:Z
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 164
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 169
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 163
    goto :goto_0

    :cond_3
    move v5, v4

    .line 165
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 178
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 195
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 132
    const-string v2, "network"

    iget-object v4, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 149
    :cond_0
    :goto_0
    return v3

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 136
    .local v1, enabled:Z
    const-string v2, "gps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 141
    .end local v1           #enabled:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 142
    const-string v4, "assisted_gps_enabled"

    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 146
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 115
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/settings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocationSettings$1;-><init>(Lcom/android/settings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 76
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 84
    :cond_0
    return-void
.end method
