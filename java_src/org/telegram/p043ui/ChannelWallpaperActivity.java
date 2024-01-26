package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.ChannelColorActivity;
import org.telegram.p043ui.ChannelWallpaperActivity;
import org.telegram.p043ui.Components.ChatThemeBottomSheet;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Easings;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.ThemePreviewActivity;
import org.telegram.p043ui.WallpapersListActivity;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$TL_wallPaperNoFile;
import org.telegram.tgnet.TLRPC$TL_wallPaperSettings;
import org.telegram.tgnet.TLRPC$WallPaper;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
/* renamed from: org.telegram.ui.ChannelWallpaperActivity */
/* loaded from: classes5.dex */
public class ChannelWallpaperActivity extends BaseFragment {
    public Adapter adapter;
    public TL_stories$TL_premium_boostsStatus boostsStatus;
    private View changeDayNightView;
    private ValueAnimator changeDayNightViewAnimator;
    private float changeDayNightViewProgress;
    public FrameLayout contentView;
    public int currentLevel;
    public TLRPC$WallPaper currentWallpaper;
    private ActionBarMenuItem dayNightItem;
    public final long dialogId;
    public TLRPC$WallPaper galleryWallpaper;
    public RecyclerListView listView;
    private Utilities.Callback3<TLRPC$WallPaper, TLRPC$WallPaper, TLRPC$WallPaper> onSelectedWallpaperChange;
    public TLRPC$WallPaper selectedWallpaper;
    private RLottieDrawable sunDrawable;
    public int rowsCount = 0;
    public int galleryRow = -1;
    public int removeRow = -1;
    public int infoRow = -1;
    public int themesRow = -1;
    public ThemePreviewActivity.DayNightSwitchDelegate toggleThemeDelegate = new ThemePreviewActivity.DayNightSwitchDelegate() { // from class: org.telegram.ui.ChannelWallpaperActivity.2
        @Override // org.telegram.p043ui.ThemePreviewActivity.DayNightSwitchDelegate
        public boolean supportsAnimation() {
            return false;
        }

        @Override // org.telegram.p043ui.ThemePreviewActivity.DayNightSwitchDelegate
        public boolean isDark() {
            return ChannelWallpaperActivity.this.isDark();
        }

        @Override // org.telegram.p043ui.ThemePreviewActivity.DayNightSwitchDelegate
        public void switchDayNight(boolean z) {
            if (((BaseFragment) ChannelWallpaperActivity.this).resourceProvider instanceof ChannelColorActivity.ThemeDelegate) {
                ((ChannelColorActivity.ThemeDelegate) ((BaseFragment) ChannelWallpaperActivity.this).resourceProvider).toggle();
            }
            ChannelWallpaperActivity.this.setForceDark(isDark(), false);
            ChannelWallpaperActivity.this.updateColors();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$toggleTheme$3(View view, MotionEvent motionEvent) {
        return true;
    }

    public ChannelWallpaperActivity(long j, final TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus) {
        this.dialogId = j;
        long j2 = -j;
        final TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(j2));
        if (chat != null) {
            this.currentLevel = chat.level;
        }
        this.boostsStatus = tL_stories$TL_premium_boostsStatus;
        if (tL_stories$TL_premium_boostsStatus == null) {
            MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(j, new Consumer() { // from class: org.telegram.ui.ChannelWallpaperActivity$$ExternalSyntheticLambda2
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ChannelWallpaperActivity.this.lambda$new$0(tL_stories$TL_premium_boostsStatus, chat, (TL_stories$TL_premium_boostsStatus) obj);
                }
            });
        } else {
            this.currentLevel = tL_stories$TL_premium_boostsStatus.level;
        }
        TLRPC$ChatFull chatFull = getMessagesController().getChatFull(j2);
        if (chatFull != null) {
            TLRPC$WallPaper tLRPC$WallPaper = chatFull.wallpaper;
            this.selectedWallpaper = tLRPC$WallPaper;
            this.currentWallpaper = tLRPC$WallPaper;
            if (ChatThemeController.isNotEmoticonWallpaper(tLRPC$WallPaper)) {
                this.galleryWallpaper = this.selectedWallpaper;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus, TLRPC$Chat tLRPC$Chat, TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus2) {
        this.boostsStatus = tL_stories$TL_premium_boostsStatus2;
        if (tL_stories$TL_premium_boostsStatus != null) {
            int i = tL_stories$TL_premium_boostsStatus.level;
            this.currentLevel = i;
            if (tLRPC$Chat != null) {
                tLRPC$Chat.flags |= 1024;
                tLRPC$Chat.level = i;
            }
        }
    }

    public void setSelectedWallpaper(TLRPC$WallPaper tLRPC$WallPaper, TLRPC$WallPaper tLRPC$WallPaper2) {
        this.selectedWallpaper = tLRPC$WallPaper;
        this.galleryWallpaper = tLRPC$WallPaper2;
    }

    public void setOnSelectedWallpaperChange(Utilities.Callback3<TLRPC$WallPaper, TLRPC$WallPaper, TLRPC$WallPaper> callback3) {
        this.onSelectedWallpaperChange = callback3;
    }

    public boolean isDark() {
        Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
        return resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getString(C3632R.string.ChannelWallpaper));
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChannelWallpaperActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ChannelWallpaperActivity.this.finishFragment();
                } else if (i == 1) {
                    ChannelWallpaperActivity.this.toggleTheme();
                }
            }
        });
        int i = C3632R.raw.sun;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
        this.sunDrawable = rLottieDrawable;
        rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
        if (!isDark()) {
            this.sunDrawable.setCustomEndFrame(0);
            this.sunDrawable.setCurrentFrame(0);
        } else {
            this.sunDrawable.setCurrentFrame(35);
            this.sunDrawable.setCustomEndFrame(36);
        }
        this.sunDrawable.beginApplyLayerColors();
        int color = Theme.getColor(Theme.key_chats_menuName, this.resourceProvider);
        this.sunDrawable.setLayerColor("Sunny.**", color);
        this.sunDrawable.setLayerColor("Path 6.**", color);
        this.sunDrawable.setLayerColor("Path.**", color);
        this.sunDrawable.setLayerColor("Path 5.**", color);
        if (this.resourceProvider instanceof ChannelColorActivity.ThemeDelegate) {
            this.dayNightItem = this.actionBar.createMenu().addItem(1, this.sunDrawable);
        }
        this.contentView = new FrameLayout(context);
        updateRows();
        RecyclerListView recyclerListView = new RecyclerListView(context, this.resourceProvider);
        this.listView = recyclerListView;
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.listView.setLayoutManager(new LinearLayoutManager(context));
        this.contentView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 119));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ChannelWallpaperActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                ChannelWallpaperActivity.this.lambda$createView$2(view, i2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        updateColors();
        FrameLayout frameLayout = this.contentView;
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view, int i) {
        if (i == this.removeRow) {
            this.galleryWallpaper = null;
            this.selectedWallpaper = null;
            Utilities.Callback3<TLRPC$WallPaper, TLRPC$WallPaper, TLRPC$WallPaper> callback3 = this.onSelectedWallpaperChange;
            if (callback3 != null) {
                callback3.run(this.currentWallpaper, null, null);
            }
            View findChildAt = findChildAt(this.themesRow);
            if (findChildAt instanceof ChannelColorActivity.ThemeChooser) {
                ((ChannelColorActivity.ThemeChooser) findChildAt).setGalleryWallpaper(this.galleryWallpaper);
            }
            updateRows();
        } else if (i == this.galleryRow) {
            ChatThemeBottomSheet.openGalleryForBackground(getParentActivity(), this, this.dialogId, this.resourceProvider, new Utilities.Callback() { // from class: org.telegram.ui.ChannelWallpaperActivity$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    ChannelWallpaperActivity.this.lambda$createView$1((TLRPC$WallPaper) obj);
                }
            }, this.toggleThemeDelegate, this.boostsStatus);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(TLRPC$WallPaper tLRPC$WallPaper) {
        this.selectedWallpaper = tLRPC$WallPaper;
        this.currentWallpaper = tLRPC$WallPaper;
        this.galleryWallpaper = tLRPC$WallPaper;
        Utilities.Callback3<TLRPC$WallPaper, TLRPC$WallPaper, TLRPC$WallPaper> callback3 = this.onSelectedWallpaperChange;
        if (callback3 != null) {
            callback3.run(tLRPC$WallPaper, tLRPC$WallPaper, tLRPC$WallPaper);
        }
        finishFragment();
    }

    public View findChildAt(int i) {
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (this.listView.getChildAdapterPosition(childAt) == i) {
                return childAt;
            }
        }
        return null;
    }

    public void updateRows() {
        this.rowsCount = 0;
        int i = 0 + 1;
        this.rowsCount = i;
        this.galleryRow = 0;
        int i2 = this.removeRow;
        if (this.galleryWallpaper != null) {
            this.rowsCount = i + 1;
            this.removeRow = i;
        } else {
            this.removeRow = -1;
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            int i3 = this.removeRow;
            if (i3 != -1 && i2 == -1) {
                adapter.notifyItemInserted(i3);
            }
            if (this.removeRow == -1 && i2 != -1) {
                this.adapter.notifyItemRemoved(i2);
            }
        }
        int i4 = this.rowsCount;
        int i5 = i4 + 1;
        this.rowsCount = i5;
        this.infoRow = i4;
        this.rowsCount = i5 + 1;
        this.themesRow = i5;
    }

    /* renamed from: org.telegram.ui.ChannelWallpaperActivity$Adapter */
    /* loaded from: classes5.dex */
    public class Adapter extends RecyclerListView.SelectionAdapter {
        public Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ChannelColorActivity.ThemeChooser themeChooser;
            if (i == 0) {
                FrameLayout textCell = new TextCell(ChannelWallpaperActivity.this.getContext(), ((BaseFragment) ChannelWallpaperActivity.this).resourceProvider);
                textCell.setBackgroundColor(ChannelWallpaperActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                themeChooser = textCell;
            } else if (i == 2) {
                final ChannelColorActivity.ThemeChooser themeChooser2 = new ChannelColorActivity.ThemeChooser(ChannelWallpaperActivity.this.getContext(), true, ((BaseFragment) ChannelWallpaperActivity.this).currentAccount, ((BaseFragment) ChannelWallpaperActivity.this).resourceProvider);
                themeChooser2.setSelectedEmoticon(ChatThemeController.getWallpaperEmoticon(ChannelWallpaperActivity.this.selectedWallpaper), false);
                themeChooser2.setGalleryWallpaper(ChannelWallpaperActivity.this.galleryWallpaper);
                themeChooser2.setOnEmoticonSelected(new Utilities.Callback() { // from class: org.telegram.ui.ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        ChannelWallpaperActivity.Adapter.this.lambda$onCreateViewHolder$1(themeChooser2, (String) obj);
                    }
                });
                themeChooser2.setBackgroundColor(ChannelWallpaperActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                themeChooser = themeChooser2;
            } else {
                themeChooser = new TextInfoPrivacyCell(ChannelWallpaperActivity.this.getContext());
            }
            return new RecyclerListView.Holder(themeChooser);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(final ChannelColorActivity.ThemeChooser themeChooser, final String str) {
            if (str == null) {
                ChannelWallpaperActivity channelWallpaperActivity = ChannelWallpaperActivity.this;
                channelWallpaperActivity.selectedWallpaper = channelWallpaperActivity.galleryWallpaper;
                themeChooser.setSelectedEmoticon(null, false);
                if (ChannelWallpaperActivity.this.onSelectedWallpaperChange != null) {
                    Utilities.Callback3 callback3 = ChannelWallpaperActivity.this.onSelectedWallpaperChange;
                    ChannelWallpaperActivity channelWallpaperActivity2 = ChannelWallpaperActivity.this;
                    callback3.run(channelWallpaperActivity2.currentWallpaper, channelWallpaperActivity2.selectedWallpaper, channelWallpaperActivity2.galleryWallpaper);
                }
                ChannelWallpaperActivity.this.updateRows();
                return;
            }
            ThemePreviewActivity themePreviewActivity = new ThemePreviewActivity(this, new WallpapersListActivity.EmojiWallpaper(str), null) { // from class: org.telegram.ui.ChannelWallpaperActivity.Adapter.1
                @Override // org.telegram.p043ui.ThemePreviewActivity
                public boolean insideBottomSheet() {
                    return true;
                }
            };
            ChannelWallpaperActivity channelWallpaperActivity3 = ChannelWallpaperActivity.this;
            themePreviewActivity.boostsStatus = channelWallpaperActivity3.boostsStatus;
            themePreviewActivity.setOnSwitchDayNightDelegate(channelWallpaperActivity3.toggleThemeDelegate);
            themePreviewActivity.setResourceProvider(((BaseFragment) ChannelWallpaperActivity.this).resourceProvider);
            themePreviewActivity.setInitialModes(false, false, 0.2f);
            themePreviewActivity.setDialogId(ChannelWallpaperActivity.this.dialogId);
            themePreviewActivity.setDelegate(new ThemePreviewActivity.WallpaperActivityDelegate() { // from class: org.telegram.ui.ChannelWallpaperActivity$Adapter$$ExternalSyntheticLambda1
                @Override // org.telegram.p043ui.ThemePreviewActivity.WallpaperActivityDelegate
                public final void didSetNewBackground(TLRPC$WallPaper tLRPC$WallPaper) {
                    ChannelWallpaperActivity.Adapter.this.lambda$onCreateViewHolder$0(str, themeChooser, tLRPC$WallPaper);
                }
            });
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            bottomSheetParams.occupyNavigationBar = true;
            ChannelWallpaperActivity.this.showAsSheet(themePreviewActivity, bottomSheetParams);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(String str, ChannelColorActivity.ThemeChooser themeChooser, TLRPC$WallPaper tLRPC$WallPaper) {
            ChannelWallpaperActivity.this.selectedWallpaper = new TLRPC$TL_wallPaperNoFile();
            TLRPC$WallPaper tLRPC$WallPaper2 = ChannelWallpaperActivity.this.selectedWallpaper;
            tLRPC$WallPaper2.f1759id = 0L;
            tLRPC$WallPaper2.flags |= 4;
            tLRPC$WallPaper2.settings = new TLRPC$TL_wallPaperSettings();
            ChannelWallpaperActivity.this.selectedWallpaper.settings.emoticon = str;
            themeChooser.setSelectedEmoticon(str, false);
            if (ChannelWallpaperActivity.this.onSelectedWallpaperChange != null) {
                Utilities.Callback3 callback3 = ChannelWallpaperActivity.this.onSelectedWallpaperChange;
                ChannelWallpaperActivity channelWallpaperActivity = ChannelWallpaperActivity.this;
                callback3.run(channelWallpaperActivity.currentWallpaper, channelWallpaperActivity.selectedWallpaper, channelWallpaperActivity.galleryWallpaper);
            }
            ChannelWallpaperActivity.this.updateRows();
            ChannelWallpaperActivity.this.finishFragment();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            ChannelWallpaperActivity channelWallpaperActivity = ChannelWallpaperActivity.this;
            if (i == channelWallpaperActivity.galleryRow || i == channelWallpaperActivity.removeRow) {
                return 0;
            }
            return i == channelWallpaperActivity.themesRow ? 2 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ChannelWallpaperActivity channelWallpaperActivity = ChannelWallpaperActivity.this;
            if (i == channelWallpaperActivity.galleryRow) {
                ((TextCell) viewHolder.itemView).setTextAndIcon(LocaleController.getString(C3632R.string.ChooseFromGallery2), C3632R.C3634drawable.msg_background, ChannelWallpaperActivity.this.removeRow != -1);
                ((TextCell) viewHolder.itemView).setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
            } else if (i == channelWallpaperActivity.removeRow) {
                ((TextCell) viewHolder.itemView).setTextAndIcon((CharSequence) LocaleController.getString(C3632R.string.ChannelWallpaperRemove), C3632R.C3634drawable.msg_delete, false);
                int i2 = Theme.key_text_RedRegular;
                ((TextCell) viewHolder.itemView).setColors(i2, i2);
            } else if (i == channelWallpaperActivity.infoRow) {
                ((TextInfoPrivacyCell) viewHolder.itemView).setText(LocaleController.getString(C3632R.string.ChannelWallpaperInfo));
                ((TextInfoPrivacyCell) viewHolder.itemView).setBackgroundColor(ChannelWallpaperActivity.this.getThemedColor(Theme.key_windowBackgroundGray));
                ((TextInfoPrivacyCell) viewHolder.itemView).setForeground(Theme.getThemedDrawableByKey(ChannelWallpaperActivity.this.getContext(), C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow, ((BaseFragment) ChannelWallpaperActivity.this).resourceProvider));
            } else if (i == channelWallpaperActivity.themesRow) {
                ((ChannelColorActivity.ThemeChooser) viewHolder.itemView).setGalleryWallpaper(channelWallpaperActivity.galleryWallpaper);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ChannelColorActivity.ThemeChooser) {
                ((ChannelColorActivity.ThemeChooser) view).setGalleryWallpaper(ChannelWallpaperActivity.this.galleryWallpaper);
            }
            super.onViewAttachedToWindow(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChannelWallpaperActivity.this.rowsCount;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }
    }

    public void updateColors() {
        this.actionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarDefault));
        this.actionBar.setTitleColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        this.actionBar.setItemsColor(getThemedColor(Theme.key_actionBarDefaultIcon), false);
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSelector), false);
        this.listView.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        this.adapter.notifyDataSetChanged();
        AndroidUtilities.forEachViews((RecyclerView) this.listView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.ChannelWallpaperActivity$$ExternalSyntheticLambda1
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ChannelWallpaperActivity.this.updateColors((View) obj);
            }
        });
        setNavigationBarColor(getNavigationBarColor());
        this.contentView.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors(View view) {
        if (view instanceof TextInfoPrivacyCell) {
            TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
            textInfoPrivacyCell.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
            textInfoPrivacyCell.setForeground(Theme.getThemedDrawableByKey(getContext(), C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow, this.resourceProvider));
            return;
        }
        view.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        if (view instanceof TextCell) {
            ((TextCell) view).updateColors();
        } else if (view instanceof ChannelColorActivity.ThemeChooser) {
            ((ChannelColorActivity.ThemeChooser) view).updateColors();
        }
    }

    public void toggleTheme() {
        FrameLayout frameLayout = (FrameLayout) getParentActivity().getWindow().getDecorView();
        final Bitmap createBitmap = Bitmap.createBitmap(frameLayout.getWidth(), frameLayout.getHeight(), Bitmap.Config.ARGB_8888);
        final Canvas canvas = new Canvas(createBitmap);
        this.dayNightItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        frameLayout.draw(canvas);
        this.dayNightItem.setAlpha(1.0f);
        final Paint paint = new Paint(1);
        paint.setColor(-16777216);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        final Paint paint2 = new Paint(1);
        paint2.setFilterBitmap(true);
        int[] iArr = new int[2];
        this.dayNightItem.getLocationInWindow(iArr);
        final float f = iArr[0];
        final float f2 = iArr[1];
        final float measuredWidth = f + (this.dayNightItem.getMeasuredWidth() / 2.0f);
        final float measuredHeight = f2 + (this.dayNightItem.getMeasuredHeight() / 2.0f);
        final float max = Math.max(createBitmap.getHeight(), createBitmap.getWidth()) + AndroidUtilities.navigationBarHeight;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(createBitmap, tileMode, tileMode));
        View view = new View(getContext()) { // from class: org.telegram.ui.ChannelWallpaperActivity.3
            @Override // android.view.View
            protected void onDraw(Canvas canvas2) {
                super.onDraw(canvas2);
                if (ChannelWallpaperActivity.this.isDark()) {
                    if (ChannelWallpaperActivity.this.changeDayNightViewProgress > BitmapDescriptorFactory.HUE_RED) {
                        canvas.drawCircle(measuredWidth, measuredHeight, max * ChannelWallpaperActivity.this.changeDayNightViewProgress, paint);
                    }
                    canvas2.drawBitmap(createBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint2);
                } else {
                    canvas2.drawCircle(measuredWidth, measuredHeight, max * (1.0f - ChannelWallpaperActivity.this.changeDayNightViewProgress), paint2);
                }
                canvas2.save();
                canvas2.translate(f, f2);
                ChannelWallpaperActivity.this.dayNightItem.draw(canvas2);
                canvas2.restore();
            }
        };
        this.changeDayNightView = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ChannelWallpaperActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean lambda$toggleTheme$3;
                lambda$toggleTheme$3 = ChannelWallpaperActivity.lambda$toggleTheme$3(view2, motionEvent);
                return lambda$toggleTheme$3;
            }
        });
        this.changeDayNightViewProgress = BitmapDescriptorFactory.HUE_RED;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.changeDayNightViewAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChannelWallpaperActivity.4
            boolean changedNavigationBarColor = false;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChannelWallpaperActivity.this.changeDayNightViewProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ChannelWallpaperActivity.this.changeDayNightView.invalidate();
                if (this.changedNavigationBarColor || ChannelWallpaperActivity.this.changeDayNightViewProgress <= 0.5f) {
                    return;
                }
                this.changedNavigationBarColor = true;
            }
        });
        this.changeDayNightViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChannelWallpaperActivity.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ChannelWallpaperActivity.this.changeDayNightView != null) {
                    if (ChannelWallpaperActivity.this.changeDayNightView.getParent() != null) {
                        ((ViewGroup) ChannelWallpaperActivity.this.changeDayNightView.getParent()).removeView(ChannelWallpaperActivity.this.changeDayNightView);
                    }
                    ChannelWallpaperActivity.this.changeDayNightView = null;
                }
                ChannelWallpaperActivity.this.changeDayNightViewAnimator = null;
                super.onAnimationEnd(animator);
            }
        });
        this.changeDayNightViewAnimator.setDuration(400L);
        this.changeDayNightViewAnimator.setInterpolator(Easings.easeInOutQuad);
        this.changeDayNightViewAnimator.start();
        frameLayout.addView(this.changeDayNightView, new ViewGroup.LayoutParams(-1, -1));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelWallpaperActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ChannelWallpaperActivity.this.lambda$toggleTheme$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTheme$4() {
        Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
        if (resourcesProvider instanceof ChannelColorActivity.ThemeDelegate) {
            ((ChannelColorActivity.ThemeDelegate) resourcesProvider).toggle();
        }
        setForceDark(isDark(), true);
        updateColors();
    }

    public void setForceDark(boolean z, boolean z2) {
        if (z2) {
            RLottieDrawable rLottieDrawable = this.sunDrawable;
            rLottieDrawable.setCustomEndFrame(z ? rLottieDrawable.getFramesCount() : 0);
            RLottieDrawable rLottieDrawable2 = this.sunDrawable;
            if (rLottieDrawable2 != null) {
                rLottieDrawable2.start();
                return;
            }
            return;
        }
        int framesCount = z ? this.sunDrawable.getFramesCount() - 1 : 0;
        this.sunDrawable.setCurrentFrame(framesCount, false, true);
        this.sunDrawable.setCustomEndFrame(framesCount);
        ActionBarMenuItem actionBarMenuItem = this.dayNightItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.invalidate();
        }
    }
}
