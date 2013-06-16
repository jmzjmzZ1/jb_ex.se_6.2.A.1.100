.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 624
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 626
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 627
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 631
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 632
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 633
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 587
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    .line 589
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801ec

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801ed

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 590
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 592
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 599
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 638
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    .line 639
    .local v8, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v8}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v9

    .line 640
    .local v9, headerType:I
    const/16 v16, 0x0

    .line 642
    .local v16, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 643
    new-instance v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 644
    .local v10, holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v9, :pswitch_data_0

    .line 673
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 680
    :goto_1
    packed-switch v9, :pswitch_data_1

    .line 736
    :goto_2
    return-object v16

    .line 646
    :pswitch_0
    new-instance v16, Landroid/widget/TextView;

    .end local v16           #view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const v19, 0x1010208

    invoke-direct/range {v16 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v17, v16

    .line 648
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 652
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04004f

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 654
    const v17, 0x7f080021

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 655
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 657
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 659
    const v17, 0x7f0800dd

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 663
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04004e

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 666
    const v17, 0x7f080021

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 667
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 669
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 675
    .end local v10           #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object/from16 v16, p2

    .line 676
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v10       #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 682
    :pswitch_3
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 687
    :pswitch_4
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0801ec

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 696
    :goto_3
    :pswitch_5
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 698
    iget-object v0, v8, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, accType:Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 701
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d001a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 703
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 704
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 706
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 725
    .end local v4           #accType:Ljava/lang/String;
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 727
    .local v14, summary:Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 728
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 690
    .end local v14           #summary:Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_3

    .line 707
    :cond_2
    iget-wide v0, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0801ef

    cmp-long v17, v17, v19

    if-eqz v17, :cond_4

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 709
    .local v13, resources:Landroid/content/res/Resources;
    new-instance v6, Lcom/sonymobile/settings/util/ColorReplacer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/sonymobile/settings/util/ColorReplacer;-><init>(Landroid/content/Context;)V

    .line 711
    .local v6, colorReplacer:Lcom/sonymobile/settings/util/ColorReplacer;
    iget v0, v8, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 713
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    .line 714
    invoke-virtual {v6, v5}, Lcom/sonymobile/settings/util/ColorReplacer;->replaceColor(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 715
    .local v15, themedBitmap:Landroid/graphics/Bitmap;
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 717
    .end local v15           #themedBitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    iget v0, v8, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 718
    const-string v17, "Settings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not load header.iconRes="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 721
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #colorReplacer:Lcom/sonymobile/settings/util/ColorReplacer;
    .end local v13           #resources:Landroid/content/res/Resources;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mOperatorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/Settings;->access$300(Lcom/android/settings/Settings;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 722
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 731
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v14       #summary:Ljava/lang/CharSequence;
    :cond_5
    iget-object v0, v10, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 680
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 746
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 747
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 741
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 742
    return-void
.end method
