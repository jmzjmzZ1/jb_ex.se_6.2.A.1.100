.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mIsTetherApn:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 85
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 71
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 63
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 54
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isTetherApn"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 80
    iput-boolean p2, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    .line 81
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 82
    return-void
.end method

.method public static clearSelectedKey()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 135
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 136
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, view:Landroid/view/View;
    const v5, 0x7f080009

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 94
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 95
    check-cast v1, Landroid/widget/RadioButton;

    .line 96
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 97
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 101
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 105
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 106
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 113
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const v5, 0x7f080008

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_2
    return-object v3

    .line 109
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    if-eqz p2, :cond_2

    .line 145
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 148
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 153
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const v0, 0x7f080008

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 162
    iget-boolean v1, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    if-eqz v1, :cond_1

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    const-class v2, Lcom/android/settings/ApnEditor;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "TetheringApn"

    iget-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 172
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 179
    return-void
.end method
