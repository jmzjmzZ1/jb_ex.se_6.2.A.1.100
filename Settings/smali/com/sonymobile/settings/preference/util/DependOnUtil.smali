.class public Lcom/sonymobile/settings/preference/util/DependOnUtil;
.super Ljava/lang/Object;
.source "DependOnUtil.java"


# instance fields
.field private mAdd:Z

.field private final mAfter:Ljava/lang/String;

.field private final mBefore:Ljava/lang/String;

.field private final mHasMetaData:Z

.field private final mHasSystemFeature:Ljava/lang/String;

.field private final mIsValidIntent:Z

.field private final mSettingsSecure:Ljava/lang/String;

.field private final mSettingsSystem:Ljava/lang/String;

.field private final mSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 78
    sget-object v1, Lcom/android/settings/R$styleable;->DependOnPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    .line 81
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 83
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    .line 84
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    .line 85
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    .line 86
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    .line 88
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method public static addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 0
    .parameter "context"
    .parameter "screen"
    .parameter "preferenceAdder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p3, resumeListeners:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    if-eqz p1, :cond_0

    .line 378
    invoke-static {p1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 380
    :cond_0
    return-void
.end method

.method private static addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 19
    .parameter "screen"
    .parameter "group"
    .parameter "preferenceAdder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p3, resumeListeners:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v11, removePrefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v12, sortPrefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_6

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 300
    .local v9, pref:Landroid/preference/Preference;
    const/4 v7, 0x0

    .line 301
    .local v7, isRemoved:Z
    instance-of v0, v9, Lcom/sonymobile/settings/preference/IncludePreference;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object v6, v9

    .line 303
    check-cast v6, Lcom/sonymobile/settings/preference/IncludePreference;

    .line 304
    .local v6, includePref:Lcom/sonymobile/settings/preference/IncludePreference;
    invoke-virtual {v6}, Lcom/sonymobile/settings/preference/IncludePreference;->dependOn()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 305
    invoke-virtual {v6}, Lcom/sonymobile/settings/preference/IncludePreference;->getIncludeResId()I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sonymobile/settings/preference/util/PreferencesAdder;->addPreferencesFromResource(I)V

    .line 307
    :cond_0
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const/4 v7, 0x1

    .line 327
    .end local v6           #includePref:Lcom/sonymobile/settings/preference/IncludePreference;
    :cond_1
    :goto_1
    if-nez v7, :cond_2

    instance-of v0, v9, Landroid/preference/PreferenceGroup;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v16, v9

    check-cast v16, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v16

    if-lez v16, :cond_2

    .line 330
    check-cast v9, Landroid/preference/PreferenceGroup;

    .end local v9           #pref:Landroid/preference/Preference;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v9, v1, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 298
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    .restart local v9       #pref:Landroid/preference/Preference;
    :cond_3
    instance-of v0, v9, Lcom/sonymobile/settings/preference/util/DependOn;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object v3, v9

    .line 310
    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 311
    .local v3, dependOnPref:Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v16

    if-nez v16, :cond_4

    .line 312
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    const/4 v7, 0x1

    goto :goto_1

    .line 318
    :cond_4
    invoke-static {v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 319
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_5
    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->hasResumeActions()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 322
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 336
    .end local v3           #dependOnPref:Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v7           #isRemoved:Z
    .end local v9           #pref:Landroid/preference/Preference;
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    .line 339
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    .line 343
    .restart local v9       #pref:Landroid/preference/Preference;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 345
    instance-of v0, v9, Lcom/sonymobile/settings/preference/RemovePreference;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object v10, v9

    .line 348
    check-cast v10, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 349
    .local v10, removePref:Lcom/sonymobile/settings/preference/RemovePreference;
    invoke-virtual {v10}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v14

    .line 350
    .local v14, targetKey:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetParentKey()Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, parentKey:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 352
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v13, p0

    .line 355
    .local v13, targetGroup:Landroid/preference/PreferenceGroup;
    :goto_3
    invoke-virtual {v13, v14}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 356
    .local v15, targetPref:Landroid/preference/Preference;
    if-eqz v15, :cond_9

    .line 357
    invoke-virtual {v13, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 352
    .end local v13           #targetGroup:Landroid/preference/PreferenceGroup;
    .end local v15           #targetPref:Landroid/preference/Preference;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    move-object/from16 v13, v16

    goto :goto_3

    .line 359
    .restart local v13       #targetGroup:Landroid/preference/PreferenceGroup;
    .restart local v15       #targetPref:Landroid/preference/Preference;
    :cond_9
    const-string v16, "SomcPreferences"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Removing targetKey="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", targetParentKey="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " failed."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    .end local v8           #parentKey:Ljava/lang/String;
    .end local v9           #pref:Landroid/preference/Preference;
    .end local v10           #removePref:Lcom/sonymobile/settings/preference/RemovePreference;
    .end local v13           #targetGroup:Landroid/preference/PreferenceGroup;
    .end local v14           #targetKey:Ljava/lang/String;
    .end local v15           #targetPref:Landroid/preference/Preference;
    :cond_a
    return-void
.end method

.method private static findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 2
    .parameter "group"
    .parameter "dependOnPref"

    .prologue
    .line 215
    const-string v0, "last"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 2
    .parameter "group"
    .parameter "dependOnPref"

    .prologue
    .line 229
    const-string v0, "first"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z
    .locals 1
    .parameter "dependOn"

    .prologue
    .line 205
    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

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

.method private static sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "group"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, sortPrefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->isOrderingAsAdded()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 249
    .local v2, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/lit8 v4, v8, 0x2

    .line 250
    .local v4, distance:I
    add-int/lit8 v5, v2, -0x1

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_2

    .line 251
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 252
    .local v7, pref:Landroid/preference/Preference;
    add-int/lit8 v8, v5, 0x1

    mul-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 250
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 256
    .end local v7           #pref:Landroid/preference/Preference;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 257
    const/4 v4, 0x0

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 259
    .local v3, dependOnPref:Lcom/sonymobile/settings/preference/util/DependOn;
    add-int/lit8 v4, v4, 0x1

    move-object v7, v3

    .line 260
    check-cast v7, Landroid/preference/Preference;

    .line 261
    .restart local v7       #pref:Landroid/preference/Preference;
    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v0

    .line 262
    .local v0, afterPref:Landroid/preference/Preference;
    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v1

    .line 263
    .local v1, beforePref:Landroid/preference/Preference;
    if-eqz v0, :cond_4

    .line 264
    invoke-virtual {p0, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 266
    invoke-virtual {p0, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 267
    :cond_4
    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {p0, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 270
    invoke-virtual {p0, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 279
    .end local v0           #afterPref:Landroid/preference/Preference;
    .end local v1           #beforePref:Landroid/preference/Preference;
    .end local v3           #dependOnPref:Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v7           #pref:Landroid/preference/Preference;
    :cond_5
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z
    .locals 13
    .parameter "context"
    .parameter "preference"
    .parameter "intent"

    .prologue
    .line 107
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 108
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 110
    :cond_0
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 112
    .local v9, value:I
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_6

    if-lez v9, :cond_6

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 114
    .end local v9           #value:I
    :cond_1
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 116
    .restart local v9       #value:I
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_7

    if-lez v9, :cond_7

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 118
    .end local v9           #value:I
    :cond_2
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 119
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 121
    :cond_3
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v10, :cond_d

    .line 122
    :cond_4
    if-nez p3, :cond_9

    .line 123
    const/4 v10, 0x0

    .line 180
    :goto_4
    return v10

    .line 108
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 112
    .restart local v9       #value:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 116
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 119
    .end local v9           #value:I
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 127
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 128
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v10, 0x80

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 129
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 130
    :cond_a
    const/16 v10, 0x80

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 132
    :cond_b
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 133
    :cond_c
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 180
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_d
    :goto_5
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    goto :goto_4

    .line 137
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_e
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v10, :cond_d

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_f

    .line 139
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 140
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v10, "SomcPreferences"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has more than one intent for metadata in:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 147
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_f
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 149
    .restart local v7       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 151
    .local v5, res:Landroid/content/res/Resources;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 152
    .local v3, metaData:Landroid/os/Bundle;
    if-eqz v5, :cond_d

    if-eqz v3, :cond_d

    .line 153
    const-string v10, "com.sonymobile.settings.preference.TITLE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 154
    .local v6, resId:I
    if-eqz v6, :cond_10

    .line 155
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    :cond_10
    const-string v10, "com.sonymobile.settings.preference.SUMMARY"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 158
    if-eqz v6, :cond_11

    .line 159
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    :cond_11
    instance-of v10, p2, Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_d

    .line 162
    move-object v0, p2

    check-cast v0, Landroid/preference/TwoStatePreference;

    move-object v8, v0

    .line 163
    .local v8, twoStatePreference:Landroid/preference/TwoStatePreference;
    const-string v10, "com.sonymobile.settings.preference.SUMMARY_ON"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 164
    if-eqz v6, :cond_12

    .line 165
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 167
    :cond_12
    const-string v10, "com.sonymobile.settings.preference.SUMMARY_OFF"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 168
    if-eqz v6, :cond_d

    .line 169
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_5

    .line 173
    .end local v3           #metaData:Landroid/os/Bundle;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #resId:I
    .end local v8           #twoStatePreference:Landroid/preference/TwoStatePreference;
    :catch_0
    move-exception v10

    goto/16 :goto_5

    .line 175
    :catch_1
    move-exception v10

    goto/16 :goto_5
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    return-object v0
.end method
