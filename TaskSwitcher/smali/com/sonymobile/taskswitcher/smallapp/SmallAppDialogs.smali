.class public Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;
.super Ljava/lang/Object;
.source "SmallAppDialogs.java"


# static fields
.field public static sCurrentDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAddDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;)Landroid/app/Dialog;
    .locals 20
    .parameter "anchorView"
    .parameter "callback"

    .prologue
    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 154
    .local v2, context:Landroid/content/Context;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x7f0b

    invoke-direct {v7, v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 155
    .local v7, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 156
    const v4, 0x7f090008

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v10, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 162
    .local v16, res:Landroid/content/res/Resources;
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;->getNumberOfNotUsedSmallApps()I

    move-result v13

    .line 163
    .local v13, notUsedSmallApps:I
    const v4, 0x7f090009

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 165
    .local v18, title:Ljava/lang/String;
    const v4, 0x7f09000a

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 166
    .local v17, text:Ljava/lang/String;
    const-string v4, "title"

    move-object/from16 v0, v18

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "text"

    move-object/from16 v0, v17

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v4, "icon"

    const v5, 0x7f02000e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 172
    .local v15, pm:Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://search?q=nothing"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v11, market:Landroid/content/Intent;
    const-string v4, "com.android.vending"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/4 v4, 0x0

    invoke-virtual {v15, v11, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 176
    .local v12, marketList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 177
    new-instance v10, Ljava/util/HashMap;

    .end local v10           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 178
    .restart local v10       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const v4, 0x7f09000b

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 179
    const v4, 0x7f09000c

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 180
    const-string v4, "title"

    move-object/from16 v0, v18

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v4, "text"

    move-object/from16 v0, v17

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :try_start_0
    const-string v4, "com.android.vending"

    invoke-virtual {v15, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 185
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    const-string v4, "icon"

    invoke-virtual {v10, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    :goto_1
    new-instance v1, Landroid/widget/SimpleAdapter;

    const v4, 0x7f030001

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v19, "title"

    aput-object v19, v5, v6

    const/4 v6, 0x1

    const-string v19, "text"

    aput-object v19, v5, v6

    const/4 v6, 0x2

    const-string v19, "icon"

    aput-object v19, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 221
    .local v1, adapter:Landroid/widget/SimpleAdapter;
    new-instance v4, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$4;

    invoke-direct {v4}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$4;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 233
    new-instance v4, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$5;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$5;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;)V

    invoke-virtual {v7, v1, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 253
    .local v8, d:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 254
    .local v14, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 255
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 256
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x3eb

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 257
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 258
    sput-object v8, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    .line 260
    return-object v8

    .line 192
    .end local v1           #adapter:Landroid/widget/SimpleAdapter;
    .end local v8           #d:Landroid/app/AlertDialog;
    .end local v14           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const-string v4, "com.nduoa.nmarket"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v15, v11, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 195
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 196
    new-instance v10, Ljava/util/HashMap;

    .end local v10           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 197
    .restart local v10       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const v4, 0x7f09000d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 198
    const v4, 0x7f09000e

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 199
    const-string v4, "title"

    move-object/from16 v0, v18

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v4, "text"

    move-object/from16 v0, v17

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :try_start_1
    const-string v4, "com.nduoa.nmarket"

    invoke-virtual {v15, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 204
    .restart local v9       #icon:Landroid/graphics/drawable/Drawable;
    const-string v4, "icon"

    invoke-virtual {v10, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 205
    :catch_0
    move-exception v4

    goto :goto_2

    .line 186
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 212
    :array_0
    .array-data 0x4
        0x4t 0x0t 0xdt 0x7ft
        0x5t 0x0t 0xdt 0x7ft
        0x3t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public static showAddFromListDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Landroid/widget/BaseAdapter;I)V
    .locals 5
    .parameter "anchorView"
    .parameter "callback"
    .parameter "adapter"
    .parameter "title"

    .prologue
    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 278
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 281
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;

    invoke-direct {v4, p2, p1, v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;-><init>(Landroid/widget/BaseAdapter;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 292
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 293
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 294
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 295
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 296
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 297
    sput-object v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    .line 298
    return-void
.end method

.method public static showMaxAppsDialog(Landroid/view/View;)Landroid/app/Dialog;
    .locals 11
    .parameter "anchorView"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x7f07

    const/4 v8, 0x1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x7f0b

    invoke-direct {v0, v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 59
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 60
    const v7, 0x7f090001

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const v7, 0x104000a

    invoke-virtual {v0, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v7, 0x7f030003

    invoke-static {v1, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 64
    .local v6, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 65
    const v7, 0x7f0d0009

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 66
    .local v5, text:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 67
    .local v3, maxApps:I
    const v7, 0x7f090002

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 71
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 72
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 73
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x3eb

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 75
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 76
    sput-object v2, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    .line 78
    return-object v2
.end method

.method public static showRemoveDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V
    .locals 17
    .parameter "anchorView"
    .parameter "callback"
    .parameter "app"
    .parameter "emptySlotIndex"

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 94
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090004

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, removeTitle:Ljava/lang/String;
    const v3, 0x7f030004

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 97
    .local v15, view:Landroid/view/View;
    const v3, 0x7f0d000a

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 99
    .local v4, checkBox:Landroid/widget/CheckBox;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x7f0b

    invoke-direct {v9, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v9, b:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 101
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, removeTitleDynamic:Ljava/lang/String;
    invoke-virtual {v9, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v9, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090003

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, buttonTitle:Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;-><init>(Landroid/widget/CheckBox;Landroid/content/Context;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    invoke-virtual {v9, v10, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    const/high16 v16, 0x104

    new-instance v3, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$2;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$2;-><init>(Landroid/widget/CheckBox;Landroid/content/Context;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    move/from16 v0, v16

    invoke-virtual {v9, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 129
    .local v11, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v3, v0, v1, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 135
    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 136
    .local v12, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 137
    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x3eb

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 139
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 140
    sput-object v11, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->sCurrentDialog:Landroid/app/AlertDialog;

    .line 141
    return-void
.end method
