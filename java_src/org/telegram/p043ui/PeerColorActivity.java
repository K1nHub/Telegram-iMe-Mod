package org.telegram.p043ui;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3706ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.ThemePreviewMessagesCell;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SimpleThemeDescription;
import org.telegram.p043ui.Components.Text;
import org.telegram.p043ui.PeerColorActivity;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputChannel;
import org.telegram.tgnet.TLRPC$TL_account_updateColor;
import org.telegram.tgnet.TLRPC$TL_channels_updateColor;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
/* renamed from: org.telegram.ui.PeerColorActivity */
/* loaded from: classes5.dex */
public class PeerColorActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private boolean applying;
    private BaseFragment bulletinFragment;
    private ButtonWithCounterView button;
    private FrameLayout buttonContainer;
    private CharSequence buttonLocked;
    private CharSequence buttonUnlocked;
    int colorPickerRow;
    private FrameLayout contentView;
    private final long dialogId;
    int iconRow;
    int info2Row;
    int infoRow;
    private final boolean isChannel;
    private RecyclerView.Adapter listAdapter;
    private RecyclerListView listView;
    private ThemePreviewMessagesCell messagesCellPreview;
    private PeerColorPicker peerColorPicker;
    int previewRow;
    int rowCount;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
    private int selectedColor;
    private long selectedEmoji;
    private SetReplyIconCell setReplyIconCell;

    public PeerColorActivity(long j) {
        this.dialogId = j;
        this.isChannel = j != 0;
    }

    public PeerColorActivity setOnApplied(BaseFragment baseFragment) {
        this.bulletinFragment = baseFragment;
        return this;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        Bulletin.addDelegate(this, new Bulletin.Delegate(this) { // from class: org.telegram.ui.PeerColorActivity.1
            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public boolean clipWithGradient(int i) {
                return true;
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return AndroidUtilities.m104dp(62);
            }
        });
        getMediaDataController().loadReplyIcons();
        if (MessagesController.getInstance(this.currentAccount).peerColors == null && BuildVars.DEBUG_PRIVATE_VERSION) {
            MessagesController.getInstance(this.currentAccount).loadAppConfig(true);
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setTitle(LocaleController.getString(this.isChannel ? C3634R.string.ChannelColorTitle : C3634R.string.UserColorTitle));
        this.actionBar.setBackButtonImage(C3634R.C3636drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3706ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PeerColorActivity.2
            @Override // org.telegram.p043ui.ActionBar.C3706ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (!PeerColorActivity.this.isChannel && PeerColorActivity.this.hasUnsavedChanged() && PeerColorActivity.this.getUserConfig().isPremium()) {
                        PeerColorActivity.this.showUnsavedAlert();
                    } else {
                        PeerColorActivity.this.finishFragment();
                    }
                }
            }
        });
        if (this.dialogId < 0) {
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
            int i = chat.flags2;
            if ((i & 32) != 0) {
                this.selectedEmoji = chat.background_emoji_id;
            }
            if ((i & 64) != 0) {
                this.selectedColor = chat.color;
            } else {
                this.selectedColor = (int) (chat.f1602id % 7);
            }
        } else {
            TLRPC$User currentUser = getUserConfig().getCurrentUser();
            int i2 = currentUser.flags2;
            if ((i2 & 64) != 0) {
                this.selectedEmoji = currentUser.background_emoji_id;
            }
            if ((i2 & 128) != 0) {
                this.selectedColor = currentUser.color;
            } else {
                this.selectedColor = (int) (currentUser.f1749id % 7);
            }
        }
        FrameLayout frameLayout = new FrameLayout(context);
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        ((DefaultItemAnimator) recyclerListView.getItemAnimator()).setSupportsChangeAnimations(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context));
        RecyclerListView recyclerListView2 = this.listView;
        C66133 c66133 = new C66133(context);
        this.listAdapter = c66133;
        recyclerListView2.setAdapter(c66133);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                PeerColorActivity.this.lambda$createView$0(view, i3);
            }
        });
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.buttonContainer = frameLayout2;
        frameLayout2.setPadding(AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(14));
        this.buttonContainer.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("l");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C3634R.C3636drawable.msg_mini_lock2), 0, 1, 33);
        this.buttonUnlocked = LocaleController.getString(this.isChannel ? C3634R.string.ChannelColorApply : C3634R.string.UserColorApplyIcon);
        this.buttonLocked = new SpannableStringBuilder(spannableStringBuilder).append((CharSequence) " ").append(this.buttonUnlocked);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, getResourceProvider());
        this.button = buttonWithCounterView;
        buttonWithCounterView.text.setHacks(true, true, true);
        this.button.setText((this.isChannel || getUserConfig().isPremium()) ? this.buttonUnlocked : this.buttonLocked, false);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerColorActivity.this.lambda$createView$1(view);
            }
        });
        this.buttonContainer.addView(this.button, LayoutHelper.createFrame(-1, 48));
        frameLayout.addView(this.buttonContainer, LayoutHelper.createFrame(-1, -2, 80));
        this.contentView = frameLayout;
        this.fragmentView = frameLayout;
        updateColors();
        updateRows();
        return this.contentView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.PeerColorActivity$3 */
    /* loaded from: classes5.dex */
    public class C66133 extends RecyclerListView.SelectionAdapter {
        final /* synthetic */ Context val$context;

        C66133(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            SetReplyIconCell setReplyIconCell;
            if (i == 0) {
                ThemePreviewMessagesCell themePreviewMessagesCell = PeerColorActivity.this.messagesCellPreview = new ThemePreviewMessagesCell(this.val$context, ((BaseFragment) PeerColorActivity.this).parentLayout, 3, PeerColorActivity.this.dialogId);
                if (Build.VERSION.SDK_INT >= 19) {
                    themePreviewMessagesCell.setImportantForAccessibility(4);
                }
                themePreviewMessagesCell.fragment = PeerColorActivity.this;
                setReplyIconCell = themePreviewMessagesCell;
            } else if (i == 1) {
                final PeerColorPicker peerColorPicker = PeerColorActivity.this.peerColorPicker = new PeerColorPicker(this.val$context, ((BaseFragment) PeerColorActivity.this).currentAccount, PeerColorActivity.this.getResourceProvider());
                peerColorPicker.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, PeerColorActivity.this.getResourceProvider()));
                peerColorPicker.setSelected(PeerColorActivity.this.selectedColor);
                peerColorPicker.layoutManager.scrollToPositionWithOffset(peerColorPicker.selectedPosition, AndroidUtilities.displaySize.x / 2);
                peerColorPicker.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PeerColorActivity$3$$ExternalSyntheticLambda0
                    @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view, int i2) {
                        PeerColorActivity.C66133.this.lambda$onCreateViewHolder$0(peerColorPicker, view, i2);
                    }
                });
                setReplyIconCell = peerColorPicker;
            } else if (i == 3) {
                SetReplyIconCell setReplyIconCell2 = PeerColorActivity.this.setReplyIconCell = new SetReplyIconCell(this.val$context);
                setReplyIconCell2.update(false);
                setReplyIconCell = setReplyIconCell2;
            } else if (i != 4) {
                setReplyIconCell = new TextInfoPrivacyCell(this.val$context);
            } else {
                View view = new View(this, this.val$context) { // from class: org.telegram.ui.PeerColorActivity.3.1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(16), 1073741824));
                    }
                };
                view.setBackground(Theme.getThemedDrawableByKey(this.val$context, C3634R.C3636drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                setReplyIconCell = view;
            }
            return new RecyclerListView.Holder(setReplyIconCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(PeerColorPicker peerColorPicker, View view, int i) {
            PeerColorActivity.this.selectedColor = peerColorPicker.toColorId(i);
            peerColorPicker.setSelectedPosition(i);
            if (view.getLeft() - peerColorPicker.getPaddingLeft() < AndroidUtilities.m104dp(24)) {
                peerColorPicker.smoothScrollBy(i == 0 ? Math.max(-(view.getLeft() - peerColorPicker.getPaddingLeft()), -AndroidUtilities.m104dp(64)) : -AndroidUtilities.m104dp(64), 0);
            } else if (view.getRight() - peerColorPicker.getPaddingLeft() > ((AndroidUtilities.displaySize.x - peerColorPicker.getPaddingLeft()) - peerColorPicker.getPaddingRight()) - AndroidUtilities.m104dp(24)) {
                peerColorPicker.smoothScrollBy(i == peerColorPicker.adapter.getItemCount() + (-1) ? Math.min((AndroidUtilities.displaySize.x - view.getRight()) - peerColorPicker.getPaddingRight(), AndroidUtilities.m104dp(64)) : AndroidUtilities.m104dp(64), 0);
            }
            PeerColorActivity.this.updateMessages();
            if (PeerColorActivity.this.setReplyIconCell != null) {
                PeerColorActivity.this.setReplyIconCell.invalidate();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (getItemViewType(i) != 2) {
                return;
            }
            TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
            PeerColorActivity peerColorActivity = PeerColorActivity.this;
            if (i == peerColorActivity.infoRow) {
                textInfoPrivacyCell.setText(LocaleController.getString(peerColorActivity.isChannel ? C3634R.string.ChannelColorHint : C3634R.string.UserColorHint));
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.val$context, C3634R.C3636drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
            } else if (i == peerColorActivity.info2Row) {
                textInfoPrivacyCell.setText(LocaleController.getString(peerColorActivity.isChannel ? C3634R.string.ChannelReplyIconHint : C3634R.string.UserReplyIconHint));
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.val$context, C3634R.C3636drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PeerColorActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            PeerColorActivity peerColorActivity = PeerColorActivity.this;
            if (i == peerColorActivity.previewRow) {
                return 0;
            }
            if (i != peerColorActivity.infoRow && i != peerColorActivity.info2Row) {
                if (i == peerColorActivity.colorPickerRow) {
                    return 1;
                }
                if (i == peerColorActivity.iconRow) {
                    return 3;
                }
                if (i == getItemCount() - 1) {
                    return 4;
                }
            }
            return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view, int i) {
        if (view instanceof SetReplyIconCell) {
            showSelectStatusDialog((SetReplyIconCell) view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        buttonClick();
    }

    private void showBoostLimit(final boolean z) {
        getMessagesController().getBoostsController().getBoostsStats(this.dialogId, new Consumer() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda4
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                PeerColorActivity.this.lambda$showBoostLimit$5(z, (TL_stories$TL_premium_boostsStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showBoostLimit$5(boolean z, final TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus) {
        if (z || tL_stories$TL_premium_boostsStatus.level < getMessagesController().channelColorLevelMin) {
            getMessagesController().getBoostsController().userCanBoostChannel(this.dialogId, tL_stories$TL_premium_boostsStatus, new Consumer() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda3
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    PeerColorActivity.this.lambda$showBoostLimit$4(tL_stories$TL_premium_boostsStatus, (ChannelBoostsController.CanApplyBoost) obj);
                }
            });
        } else {
            apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showBoostLimit$4(TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus, ChannelBoostsController.CanApplyBoost canApplyBoost) {
        if (getContext() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, getContext(), 20, this.currentAccount, getResourceProvider());
        limitReachedBottomSheet.setCanApplyBoost(canApplyBoost);
        limitReachedBottomSheet.setBoostsStats(tL_stories$TL_premium_boostsStatus, true);
        limitReachedBottomSheet.setDialogId(this.dialogId);
        limitReachedBottomSheet.showStatisticButtonInLink(new Runnable() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                PeerColorActivity.this.lambda$showBoostLimit$2();
            }
        });
        showDialog(limitReachedBottomSheet);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                PeerColorActivity.this.lambda$showBoostLimit$3();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showBoostLimit$2() {
        TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", -this.dialogId);
        bundle.putBoolean("is_megagroup", chat.megagroup);
        bundle.putBoolean("start_from_boosts", true);
        TLRPC$ChatFull chatFull = getMessagesController().getChatFull(-this.dialogId);
        if (chatFull == null || !chatFull.can_view_stats) {
            bundle.putBoolean("only_boosts", true);
        }
        presentFragment(new StatisticActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showBoostLimit$3() {
        this.button.setLoading(false);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (!this.isChannel && hasUnsavedChanged() && getUserConfig().isPremium()) {
            showUnsavedAlert();
            return false;
        }
        return super.onBackPressed();
    }

    public boolean hasUnsavedChanged() {
        if (this.isChannel) {
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
            if (chat == null) {
                return false;
            }
            if (this.selectedColor == chat.color) {
                if (this.selectedEmoji == ((chat.flags2 & 64) != 0 ? chat.background_emoji_id : 0L)) {
                    return false;
                }
            }
            return true;
        }
        TLRPC$User currentUser = getUserConfig().getCurrentUser();
        if (this.selectedColor == currentUser.color) {
            if (this.selectedEmoji == ((currentUser.flags2 & 64) != 0 ? currentUser.background_emoji_id : 0L)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        if (!this.isChannel && hasUnsavedChanged() && getUserConfig().isPremium()) {
            return false;
        }
        return super.isSwipeBackEnabled(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnsavedAlert() {
        if (getVisibleDialog() != null) {
            return;
        }
        AlertDialog create = new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(this.isChannel ? C3634R.string.ChannelColorUnsaved : C3634R.string.UserColorUnsaved)).setMessage(LocaleController.getString(this.isChannel ? C3634R.string.ChannelColorUnsavedMessage : C3634R.string.UserColorUnsavedMessage)).setNegativeButton(LocaleController.getString(C3634R.string.Dismiss), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PeerColorActivity.this.lambda$showUnsavedAlert$6(dialogInterface, i);
            }
        }).setPositiveButton(LocaleController.getString(C3634R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PeerColorActivity.this.lambda$showUnsavedAlert$7(dialogInterface, i);
            }
        }).create();
        showDialog(create);
        ((TextView) create.getButton(-2)).setTextColor(getThemedColor(Theme.key_text_RedBold));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnsavedAlert$6(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUnsavedAlert$7(DialogInterface dialogInterface, int i) {
        buttonClick();
    }

    private void buttonClick() {
        if (this.button.isLoading()) {
            return;
        }
        if (this.isChannel) {
            this.button.setLoading(true);
            showBoostLimit(false);
        } else if (!getUserConfig().isPremium()) {
            Bulletin createSimpleBulletin = BulletinFactory.m62of(this).createSimpleBulletin(C3634R.raw.star_premium_2, AndroidUtilities.premiumText(LocaleController.getString(C3634R.string.UserColorApplyPremium), new Runnable() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    PeerColorActivity.this.lambda$buttonClick$8();
                }
            }));
            createSimpleBulletin.getLayout().setPadding(AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(14), AndroidUtilities.m104dp(8));
            createSimpleBulletin.show();
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
        } else {
            apply();
            finishFragment();
            showBulletin();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buttonClick$8() {
        presentFragment(new PremiumPreviewFragment("name_color"));
    }

    private void apply() {
        if (this.applying || this.peerColorPicker == null) {
            return;
        }
        if (this.isChannel || getUserConfig().isPremium()) {
            if (this.isChannel) {
                TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
                if (chat == null) {
                    return;
                }
                if (this.selectedColor == chat.color) {
                    if (this.selectedEmoji == ((chat.flags2 & 64) == 0 ? 0L : chat.background_emoji_id)) {
                        return;
                    }
                }
                TLRPC$TL_channels_updateColor tLRPC$TL_channels_updateColor = new TLRPC$TL_channels_updateColor();
                TLRPC$InputChannel inputChannel = getMessagesController().getInputChannel(-this.dialogId);
                tLRPC$TL_channels_updateColor.channel = inputChannel;
                if (inputChannel == null) {
                    return;
                }
                int i = chat.flags2 | 64;
                chat.flags2 = i;
                int i2 = this.selectedColor;
                chat.color = i2;
                tLRPC$TL_channels_updateColor.color = i2;
                long j = this.selectedEmoji;
                if (j != 0) {
                    chat.flags2 = i | 32;
                    chat.background_emoji_id = j;
                    tLRPC$TL_channels_updateColor.flags |= 1;
                    tLRPC$TL_channels_updateColor.background_emoji_id = j;
                } else {
                    chat.flags2 = i & (-33);
                    chat.background_emoji_id = 0L;
                }
                this.button.setLoading(true);
                getMessagesController().putChat(chat, false);
                getUserConfig().saveConfig(true);
                getConnectionsManager().sendRequest(tLRPC$TL_channels_updateColor, new RequestDelegate() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda9
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        PeerColorActivity.this.lambda$apply$10(tLObject, tLRPC$TL_error);
                    }
                });
            } else {
                TLRPC$User currentUser = getUserConfig().getCurrentUser();
                if (this.selectedColor == currentUser.color) {
                    if (this.selectedEmoji == ((currentUser.flags2 & 64) == 0 ? 0L : currentUser.background_emoji_id)) {
                        return;
                    }
                }
                TLRPC$TL_account_updateColor tLRPC$TL_account_updateColor = new TLRPC$TL_account_updateColor();
                int i3 = currentUser.flags2 | 128;
                currentUser.flags2 = i3;
                int i4 = this.selectedColor;
                currentUser.color = i4;
                tLRPC$TL_account_updateColor.color = i4;
                long j2 = this.selectedEmoji;
                if (j2 != 0) {
                    currentUser.flags2 = i3 | 64;
                    currentUser.background_emoji_id = j2;
                    tLRPC$TL_account_updateColor.flags |= 1;
                    tLRPC$TL_account_updateColor.background_emoji_id = j2;
                } else {
                    currentUser.flags2 = i3 & (-65);
                    currentUser.background_emoji_id = 0L;
                }
                getMessagesController().putUser(currentUser, false);
                getUserConfig().saveConfig(true);
                getConnectionsManager().sendRequest(tLRPC$TL_account_updateColor, null);
            }
            this.applying = true;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_EMOJI_STATUS));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$apply$10(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                PeerColorActivity.this.lambda$apply$9(tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$apply$9(TLRPC$TL_error tLRPC$TL_error) {
        this.applying = false;
        if (tLRPC$TL_error != null && "BOOSTS_REQUIRED".equals(tLRPC$TL_error.text)) {
            showBoostLimit(true);
            return;
        }
        finishFragment();
        showBulletin();
    }

    private void showBulletin() {
        BaseFragment baseFragment = this.bulletinFragment;
        if (baseFragment != null) {
            BulletinFactory.m62of(baseFragment).createSimpleBulletin(PeerColorDrawable.from(this.currentAccount, this.selectedColor), LocaleController.getString(this.isChannel ? C3634R.string.ChannelColorApplied : C3634R.string.UserColorApplied)).show();
            this.bulletinFragment = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMessages() {
        MessageObject messageObject;
        ThemePreviewMessagesCell themePreviewMessagesCell = this.messagesCellPreview;
        if (themePreviewMessagesCell != null) {
            ChatMessageCell[] cells = themePreviewMessagesCell.getCells();
            for (int i = 0; i < cells.length; i++) {
                if (cells[i] != null && (messageObject = cells[i].getMessageObject()) != null) {
                    PeerColorPicker peerColorPicker = this.peerColorPicker;
                    if (peerColorPicker != null) {
                        messageObject.overrideLinkColor = peerColorPicker.getColorId();
                    }
                    messageObject.overrideLinkEmoji = this.selectedEmoji;
                    cells[i].setAvatar(messageObject);
                    cells[i].invalidate();
                }
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentClosed() {
        super.onFragmentClosed();
        Bulletin.removeDelegate(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PeerColorActivity$SetReplyIconCell */
    /* loaded from: classes5.dex */
    public class SetReplyIconCell extends FrameLayout {
        private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable imageDrawable;
        private Text offText;
        private TextView textView;

        public SetReplyIconCell(Context context) {
            super(context);
            setBackgroundColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 16.0f);
            this.textView.setTextColor(PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.textView.setText(LocaleController.getString(PeerColorActivity.this.isChannel ? C3634R.string.ChannelReplyIcon : C3634R.string.UserReplyIcon));
            addView(this.textView, LayoutHelper.createFrame(-1, -2, 23, 20, 0, 48, 0));
            this.imageDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, false, AndroidUtilities.m104dp(24), 13);
        }

        public void update(boolean z) {
            if (PeerColorActivity.this.selectedEmoji != 0) {
                this.imageDrawable.set(PeerColorActivity.this.selectedEmoji, z);
                this.offText = null;
                return;
            }
            this.imageDrawable.set((Drawable) null, z);
            if (this.offText == null) {
                this.offText = new Text(LocaleController.getString(PeerColorActivity.this.isChannel ? C3634R.string.ChannelReplyIconOff : C3634R.string.UserReplyIconOff), 16);
            }
        }

        public void updateImageBounds() {
            this.imageDrawable.setBounds((getWidth() - this.imageDrawable.getIntrinsicWidth()) - AndroidUtilities.m104dp(21), (getHeight() - this.imageDrawable.getIntrinsicHeight()) / 2, getWidth() - AndroidUtilities.m104dp(21), (getHeight() + this.imageDrawable.getIntrinsicHeight()) / 2);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            updateImageBounds();
            this.imageDrawable.setColor(Integer.valueOf(getColor()));
            Text text = this.offText;
            if (text != null) {
                text.draw(canvas, (getMeasuredWidth() - this.offText.getWidth()) - AndroidUtilities.m104dp(19), getMeasuredHeight() / 2.0f, PeerColorActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText4), 1.0f);
            } else {
                this.imageDrawable.draw(canvas);
            }
        }

        public int getColor() {
            MessagesController.PeerColor color;
            if (PeerColorActivity.this.selectedColor >= 7) {
                MessagesController.PeerColors peerColors = MessagesController.getInstance(((BaseFragment) PeerColorActivity.this).currentAccount).peerColors;
                if (peerColors != null && (color = peerColors.getColor(PeerColorActivity.this.selectedColor)) != null) {
                    return color.getColor1();
                }
                return PeerColorActivity.this.getThemedColor(AvatarDrawable.getNameColorKey1For(0));
            }
            PeerColorActivity peerColorActivity = PeerColorActivity.this;
            return peerColorActivity.getThemedColor(AvatarDrawable.getNameColorKey1For(peerColorActivity.selectedColor));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(50), 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.imageDrawable.detach();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageDrawable.attach();
        }
    }

    public void showSelectStatusDialog(final SetReplyIconCell setReplyIconCell) {
        int i;
        int i2;
        if (this.selectAnimatedEmojiDialog != null || setReplyIconCell == null) {
            return;
        }
        final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
        int min = (int) Math.min(AndroidUtilities.m104dp(330), AndroidUtilities.displaySize.y * 0.75f);
        int min2 = (int) Math.min(AndroidUtilities.m104dp(324), AndroidUtilities.displaySize.x * 0.95f);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = setReplyIconCell.imageDrawable;
        if (setReplyIconCell.imageDrawable != null) {
            setReplyIconCell.imageDrawable.play();
            setReplyIconCell.updateImageBounds();
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(setReplyIconCell.imageDrawable.getBounds());
            int m104dp = ((-rect.centerY()) + AndroidUtilities.m104dp(12)) - min;
            i = rect.centerX() - (AndroidUtilities.displaySize.x - min2);
            i2 = m104dp;
        } else {
            i = 0;
            i2 = 0;
        }
        int i3 = i2;
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this, getContext(), true, Integer.valueOf(i), 5, true, getResourceProvider(), 24, setReplyIconCell.getColor()) { // from class: org.telegram.ui.PeerColorActivity.4
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
            protected float getScrimDrawableTranslationY() {
                return BitmapDescriptorFactory.HUE_RED;
            }

            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
            protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
                PeerColorActivity.this.selectedEmoji = l == null ? 0L : l.longValue();
                SetReplyIconCell setReplyIconCell2 = setReplyIconCell;
                if (setReplyIconCell2 != null) {
                    setReplyIconCell2.update(true);
                }
                PeerColorActivity.this.updateMessages();
                if (selectAnimatedEmojiDialogWindowArr[0] != null) {
                    PeerColorActivity.this.selectAnimatedEmojiDialog = null;
                    selectAnimatedEmojiDialogWindowArr[0].dismiss();
                }
            }
        };
        long j = this.selectedEmoji;
        selectAnimatedEmojiDialog.setSelected(j == 0 ? null : Long.valueOf(j));
        selectAnimatedEmojiDialog.setSaveState(3);
        selectAnimatedEmojiDialog.setScrimDrawable(swapAnimatedEmojiDrawable, setReplyIconCell);
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: org.telegram.ui.PeerColorActivity.5
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                PeerColorActivity.this.selectAnimatedEmojiDialog = null;
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(setReplyIconCell, 0, i3, 53);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    private void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.previewRow = 0;
        int i2 = i + 1;
        this.rowCount = i2;
        this.colorPickerRow = i;
        int i3 = i2 + 1;
        this.rowCount = i3;
        this.infoRow = i2;
        int i4 = i3 + 1;
        this.rowCount = i4;
        this.iconRow = i3;
        this.rowCount = i4 + 1;
        this.info2Row = i4;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return SimpleThemeDescription.createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.PeerColorActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                PeerColorActivity.this.updateColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundWhite, Theme.key_windowBackgroundWhiteBlackText, Theme.key_windowBackgroundWhiteGrayText2, Theme.key_listSelector, Theme.key_windowBackgroundGray, Theme.key_windowBackgroundWhiteGrayText4, Theme.key_text_RedRegular, Theme.key_windowBackgroundChecked, Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        this.contentView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.listAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ButtonWithCounterView buttonWithCounterView;
        if (i2 == this.currentAccount && i == NotificationCenter.currentUserPremiumStatusChanged && (buttonWithCounterView = this.button) != null) {
            buttonWithCounterView.setText((this.isChannel || getUserConfig().isPremium()) ? this.buttonUnlocked : this.buttonLocked, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PeerColorActivity$PeerColorPicker */
    /* loaded from: classes5.dex */
    public static class PeerColorPicker extends RecyclerListView {
        private static final int[] order = {5, 3, 1, 0, 2, 4, 6};
        public final RecyclerView.Adapter adapter;
        private final int currentAccount;
        public final LinearLayoutManager layoutManager;
        private final Theme.ResourcesProvider resourcesProvider;
        private int selectedPosition;

        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (getParent() != null && getParent().getParent() != null) {
                getParent().getParent().requestDisallowInterceptTouchEvent(canScrollHorizontally(-1) || canScrollHorizontally(1));
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView
        public Integer getSelectorColor(int i) {
            return 0;
        }

        public PeerColorPicker(final Context context, final int i, final Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            setPadding(AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8));
            setClipToPadding(false);
            RecyclerView.Adapter adapter = new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.PeerColorActivity.PeerColorPicker.1
                @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
                public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                    return true;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                    return new RecyclerListView.Holder(new ColorCell(context));
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                    ColorCell colorCell = (ColorCell) viewHolder.itemView;
                    colorCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
                    colorCell.setSelected(i2 == PeerColorPicker.this.selectedPosition, false);
                    if (i2 >= 0) {
                        int[] iArr = Theme.keys_avatar_nameInMessage;
                        if (i2 < iArr.length) {
                            colorCell.set(Theme.getColor(iArr[PeerColorPicker.order[i2]], resourcesProvider));
                            return;
                        }
                    }
                    int length = i2 - Theme.keys_avatar_nameInMessage.length;
                    MessagesController.PeerColors peerColors = MessagesController.getInstance(i).peerColors;
                    if (peerColors == null || length < 0 || length >= peerColors.colors.size()) {
                        return;
                    }
                    colorCell.set(peerColors.colors.get(length));
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    MessagesController.PeerColors peerColors = MessagesController.getInstance(i).peerColors;
                    return (peerColors == null ? 0 : peerColors.colors.size()) + 7;
                }
            };
            this.adapter = adapter;
            setAdapter(adapter);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            this.layoutManager = linearLayoutManager;
            linearLayoutManager.setOrientation(0);
            setLayoutManager(linearLayoutManager);
        }

        public void setSelected(int i) {
            setSelectedPosition(toPosition(i));
        }

        public void setSelectedPosition(int i) {
            if (i != this.selectedPosition) {
                this.selectedPosition = i;
                AndroidUtilities.forEachViews((RecyclerView) this, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.PeerColorActivity$PeerColorPicker$$ExternalSyntheticLambda0
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        PeerColorActivity.PeerColorPicker.this.lambda$setSelectedPosition$0((View) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelectedPosition$0(View view) {
            ((ColorCell) view).setSelected(getChildAdapterPosition(view) == this.selectedPosition, true);
        }

        public int getColorId() {
            return toColorId(this.selectedPosition);
        }

        public int toPosition(int i) {
            if (i >= 0 && i < Theme.keys_avatar_nameInMessage.length) {
                int i2 = 0;
                while (true) {
                    int[] iArr = order;
                    if (i2 >= iArr.length) {
                        break;
                    } else if (iArr[i2] == i) {
                        return i2;
                    } else {
                        i2++;
                    }
                }
            }
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).peerColors;
            if (peerColors == null) {
                return 0;
            }
            for (int i3 = 0; i3 < peerColors.colors.size(); i3++) {
                if (peerColors.colors.get(i3).f1540id == i) {
                    return i3 + 7;
                }
            }
            return 0;
        }

        public int toColorId(int i) {
            if (i >= 0 && i < 7) {
                return order[i];
            }
            int i2 = i - 7;
            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).peerColors;
            if (peerColors == null || i2 < 0 || i2 >= peerColors.colors.size()) {
                return 0;
            }
            return peerColors.colors.get(i2).f1540id;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.PeerColorActivity$PeerColorPicker$ColorCell */
        /* loaded from: classes5.dex */
        public static class ColorCell extends View {
            private final Paint backgroundPaint;
            private final ButtonBounce bounce;
            private final Path circlePath;
            private final Path color2Path;
            private boolean hasColor2;
            private boolean hasColor3;
            private final Paint paint1;
            private final Paint paint2;
            private final Paint paint3;
            private boolean selected;
            private final AnimatedFloat selectedT;

            public ColorCell(Context context) {
                super(context);
                Paint paint = new Paint(1);
                this.backgroundPaint = paint;
                this.paint1 = new Paint(1);
                this.paint2 = new Paint(1);
                this.paint3 = new Paint(1);
                this.circlePath = new Path();
                this.color2Path = new Path();
                this.bounce = new ButtonBounce(this);
                this.selectedT = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
                paint.setStyle(Paint.Style.STROKE);
            }

            @Override // android.view.View
            public void setBackgroundColor(int i) {
                this.backgroundPaint.setColor(i);
            }

            public void set(int i) {
                this.hasColor3 = false;
                this.hasColor2 = false;
                this.paint1.setColor(i);
            }

            public void set(MessagesController.PeerColor peerColor) {
                if (Theme.isCurrentThemeDark() && peerColor.hasColor2() && !peerColor.hasColor3()) {
                    this.paint1.setColor(peerColor.getColor2());
                    this.paint2.setColor(peerColor.getColor1());
                } else {
                    this.paint1.setColor(peerColor.getColor1());
                    this.paint2.setColor(peerColor.getColor2());
                }
                this.paint3.setColor(peerColor.getColor3());
                this.hasColor2 = peerColor.hasColor2();
                this.hasColor3 = peerColor.hasColor3();
            }

            public void setSelected(boolean z, boolean z2) {
                this.selected = z;
                if (!z2) {
                    this.selectedT.set(z, true);
                }
                invalidate();
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                setMeasuredDimension(AndroidUtilities.m104dp(56), AndroidUtilities.m104dp(56));
                this.circlePath.rewind();
                this.circlePath.addCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, AndroidUtilities.m104dp(20), Path.Direction.CW);
                this.color2Path.rewind();
                this.color2Path.moveTo(getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED);
                this.color2Path.lineTo(getMeasuredWidth(), getMeasuredHeight());
                this.color2Path.lineTo(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight());
                this.color2Path.close();
            }

            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                canvas.save();
                float scale = this.bounce.getScale(0.05f);
                canvas.scale(scale, scale, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
                canvas.save();
                canvas.clipPath(this.circlePath);
                canvas.drawPaint(this.paint1);
                if (this.hasColor2) {
                    canvas.drawPath(this.color2Path, this.paint2);
                }
                canvas.restore();
                if (this.hasColor3) {
                    canvas.save();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set((getMeasuredWidth() - AndroidUtilities.m105dp(12.4f)) / 2.0f, (getMeasuredHeight() - AndroidUtilities.m105dp(12.4f)) / 2.0f, (getMeasuredWidth() + AndroidUtilities.m105dp(12.4f)) / 2.0f, (getMeasuredHeight() + AndroidUtilities.m105dp(12.4f)) / 2.0f);
                    canvas.rotate(45.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m105dp(2.33f), AndroidUtilities.m105dp(2.33f), this.paint3);
                    canvas.restore();
                }
                float f = this.selectedT.set(this.selected);
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    this.backgroundPaint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
                    canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, AndroidUtilities.lerp(AndroidUtilities.m104dp(20) + (this.backgroundPaint.getStrokeWidth() * 0.5f), AndroidUtilities.m104dp(20) - (this.backgroundPaint.getStrokeWidth() * 2.0f), f), this.backgroundPaint);
                }
                canvas.restore();
            }

            @Override // android.view.View
            public void setPressed(boolean z) {
                super.setPressed(z);
                this.bounce.setPressed(z);
            }
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$ChangeNameColorCell */
    /* loaded from: classes5.dex */
    public static class ChangeNameColorCell extends View {
        private final Text buttonText;
        private final Drawable drawable;
        private final boolean isChannel;
        private boolean needDivider;
        private final Theme.ResourcesProvider resourcesProvider;
        private Text userText;
        private final Paint userTextBackgroundPaint;
        private int userTextColorKey;

        public ChangeNameColorCell(boolean z, Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.userTextBackgroundPaint = new Paint(1);
            this.userTextColorKey = -1;
            this.isChannel = z;
            this.resourcesProvider = resourcesProvider;
            Drawable mutate = context.getResources().getDrawable(C3634R.C3636drawable.msg_palette).mutate();
            this.drawable = mutate;
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider), PorterDuff.Mode.SRC_IN));
            this.buttonText = new Text(LocaleController.getString(z ? C3634R.string.ChangeChannelNameColor : C3634R.string.ChangeUserNameColor), 16);
            updateColors();
        }

        public void updateColors() {
            int i;
            this.drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.isChannel ? Theme.key_windowBackgroundWhiteGrayIcon : Theme.key_windowBackgroundWhiteBlueText4, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            this.buttonText.setColor(Theme.getColor(this.isChannel ? Theme.key_windowBackgroundWhiteBlackText : Theme.key_windowBackgroundWhiteBlueText4, this.resourcesProvider));
            if (this.userText == null || this.userTextBackgroundPaint == null || (i = this.userTextColorKey) == -1) {
                return;
            }
            int color = Theme.getColor(i, this.resourcesProvider);
            this.userText.setColor(color);
            this.userTextBackgroundPaint.setColor(Theme.multAlpha(color, 0.1f));
        }

        public void set(TLRPC$Chat tLRPC$Chat, boolean z) {
            int color;
            if (tLRPC$Chat == null) {
                return;
            }
            this.needDivider = z;
            this.userText = new Text(Emoji.replaceEmoji(tLRPC$Chat.title, Theme.chat_msgTextPaint.getFontMetricsInt(), false), 13, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            int i = (tLRPC$Chat.flags2 & 64) != 0 ? tLRPC$Chat.color : (int) (tLRPC$Chat.f1602id % 7);
            if (i < 7) {
                int i2 = Theme.keys_avatar_nameInMessage[i];
                this.userTextColorKey = i2;
                color = Theme.getColor(i2, this.resourcesProvider);
            } else {
                MessagesController.PeerColors peerColors = MessagesController.getInstance(UserConfig.selectedAccount).peerColors;
                MessagesController.PeerColor color2 = peerColors == null ? null : peerColors.getColor(i);
                if (color2 != null) {
                    this.userTextColorKey = -1;
                    color = color2.getColor1();
                } else {
                    int i3 = Theme.keys_avatar_nameInMessage[0];
                    this.userTextColorKey = i3;
                    color = Theme.getColor(i3, this.resourcesProvider);
                }
            }
            this.userText.setColor(color);
            this.userTextBackgroundPaint.setColor(Theme.multAlpha(color, 0.1f));
        }

        public void set(TLRPC$User tLRPC$User) {
            int color;
            if (tLRPC$User == null) {
                return;
            }
            String str = tLRPC$User.first_name;
            String trim = str == null ? "" : str.trim();
            int indexOf = trim.indexOf(" ");
            if (indexOf > 0) {
                trim = trim.substring(0, indexOf);
            }
            this.userText = new Text(Emoji.replaceEmoji(trim, Theme.chat_msgTextPaint.getFontMetricsInt(), false), 13, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            int i = (tLRPC$User.flags2 & 128) != 0 ? tLRPC$User.color : (int) (tLRPC$User.f1749id % 7);
            if (i < 7) {
                int i2 = Theme.keys_avatar_nameInMessage[i];
                this.userTextColorKey = i2;
                color = Theme.getColor(i2, this.resourcesProvider);
            } else {
                MessagesController.PeerColors peerColors = MessagesController.getInstance(UserConfig.selectedAccount).peerColors;
                MessagesController.PeerColor color2 = peerColors == null ? null : peerColors.getColor(i);
                if (color2 != null) {
                    this.userTextColorKey = -1;
                    color = color2.getColor1();
                } else {
                    int i3 = Theme.keys_avatar_nameInMessage[0];
                    this.userTextColorKey = i3;
                    color = Theme.getColor(i3, this.resourcesProvider);
                }
            }
            this.userText.setColor(color);
            this.userTextBackgroundPaint.setColor(Theme.multAlpha(color, 0.1f));
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(50) + (this.needDivider ? 1 : 0), 1073741824));
        }

        private int rtl(int i) {
            return LocaleController.isRTL ? getMeasuredWidth() - i : i;
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.drawable.setBounds(rtl(AndroidUtilities.m104dp(64) / 2) - (this.drawable.getIntrinsicWidth() / 2), (getMeasuredHeight() / 2) - (this.drawable.getIntrinsicHeight() / 2), rtl(AndroidUtilities.m104dp(64) / 2) + (this.drawable.getIntrinsicWidth() / 2), (getMeasuredHeight() / 2) + (this.drawable.getIntrinsicHeight() / 2));
            this.drawable.draw(canvas);
            this.buttonText.ellipsize(getMeasuredWidth() - AndroidUtilities.m104dp(171)).draw(canvas, LocaleController.isRTL ? (getMeasuredWidth() - this.buttonText.getWidth()) - AndroidUtilities.m104dp(71) : AndroidUtilities.m104dp(71), getMeasuredHeight() / 2.0f);
            if (this.userText != null) {
                int measuredWidth = (int) ((getMeasuredWidth() - AndroidUtilities.m104dp(116)) - Math.min(this.buttonText.getWidth(), getMeasuredWidth() - AndroidUtilities.m104dp(164)));
                int min = (int) Math.min(this.userText.getWidth(), measuredWidth);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(LocaleController.isRTL ? AndroidUtilities.m104dp(15) : (getMeasuredWidth() - AndroidUtilities.m104dp(33)) - min, (getMeasuredHeight() - AndroidUtilities.m104dp(22)) / 2.0f, LocaleController.isRTL ? AndroidUtilities.m104dp(33) + min : getMeasuredWidth() - AndroidUtilities.m104dp(15), (getMeasuredHeight() + AndroidUtilities.m104dp(22)) / 2.0f);
                canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(12), AndroidUtilities.m104dp(12), this.userTextBackgroundPaint);
                this.userText.ellipsize(measuredWidth).draw(canvas, LocaleController.isRTL ? AndroidUtilities.m104dp(24) : (getMeasuredWidth() - AndroidUtilities.m104dp(24)) - min, getMeasuredHeight() / 2.0f);
            }
            if (this.needDivider) {
                Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
                Paint paint = resourcesProvider != null ? resourcesProvider.getPaint("paintDivider") : null;
                if (paint == null) {
                    paint = Theme.dividerPaint;
                }
                canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m104dp(64), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m104dp(64) : 0), getMeasuredHeight() - 1, paint);
            }
        }
    }

    /* renamed from: org.telegram.ui.PeerColorActivity$PeerColorDrawable */
    /* loaded from: classes5.dex */
    public static class PeerColorDrawable extends Drawable {
        private final Path clipCirclePath;
        private final Paint color1Paint;
        private final Paint color2Paint;
        private final Path color2Path;
        private final Paint color3Paint;
        private final int diameter;
        private final boolean hasColor3;
        private final int radius;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public static PeerColorDrawable from(int i, int i2) {
            if (i2 < 7) {
                return new PeerColorDrawable(Theme.getColor(Theme.keys_avatar_nameInMessage[i2]), Theme.getColor(Theme.keys_avatar_nameInMessage[i2]), Theme.getColor(Theme.keys_avatar_nameInMessage[i2]));
            }
            MessagesController.PeerColors peerColors = MessagesController.getInstance(i).peerColors;
            return from(peerColors == null ? null : peerColors.getColor(i2));
        }

        public static PeerColorDrawable from(MessagesController.PeerColor peerColor) {
            if (peerColor == null) {
                return new PeerColorDrawable(0, 0, 0);
            }
            return new PeerColorDrawable(peerColor.getColor1(), peerColor.getColor2(), peerColor.getColor3());
        }

        public PeerColorDrawable(int i, int i2, int i3) {
            int m105dp = AndroidUtilities.m105dp(21.333f);
            this.diameter = m105dp;
            int i4 = m105dp / 2;
            this.radius = i4;
            Paint paint = new Paint(1);
            this.color1Paint = paint;
            Paint paint2 = new Paint(1);
            this.color2Paint = paint2;
            Paint paint3 = new Paint(1);
            this.color3Paint = paint3;
            Path path = new Path();
            this.color2Path = path;
            Path path2 = new Path();
            this.clipCirclePath = path2;
            this.hasColor3 = i3 != i;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            path2.addCircle(i4, i4, i4, Path.Direction.CW);
            path.moveTo(m105dp, BitmapDescriptorFactory.HUE_RED);
            path.lineTo(m105dp, m105dp);
            path.lineTo(BitmapDescriptorFactory.HUE_RED, m105dp);
            path.close();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().centerX() - this.radius, getBounds().centerY() - this.radius);
            canvas.clipPath(this.clipCirclePath);
            canvas.drawPaint(this.color1Paint);
            canvas.drawPath(this.color2Path, this.color2Paint);
            if (this.hasColor3) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.radius - AndroidUtilities.m105dp(3.66f), this.radius - AndroidUtilities.m105dp(3.66f), this.radius + AndroidUtilities.m105dp(3.66f), this.radius + AndroidUtilities.m105dp(3.66f));
                int i = this.radius;
                canvas.rotate(45.0f, i, i);
                canvas.drawRoundRect(rectF, AndroidUtilities.m105dp(2.33f), AndroidUtilities.m105dp(2.33f), this.color3Paint);
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.diameter;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.diameter;
        }
    }
}
