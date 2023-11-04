package org.telegram.p043ui;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3706ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.AvailableReactionCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.ThemePreviewMessagesCell;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SimpleThemeDescription;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
/* renamed from: org.telegram.ui.ReactionsDoubleTapManageActivity */
/* loaded from: classes5.dex */
public class ReactionsDoubleTapManageActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private LinearLayout contentView;
    private int enableRow;
    private int enableSectionRow;
    int infoRow;
    private String initInfoText;
    private RecyclerView.Adapter listAdapter;
    private RecyclerListView listView;
    int premiumReactionRow;
    int previewRow;
    int reactionsStartRow = -1;
    int rowCount;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.reactionsDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setTitle(LocaleController.getString("Reactions", C3634R.string.Reactions));
        this.actionBar.setTitle(LocaleController.getString("DoubleTapSetting", C3634R.string.DoubleTapSetting));
        this.actionBar.setBackButtonImage(C3634R.C3636drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3706ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ReactionsDoubleTapManageActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3706ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ReactionsDoubleTapManageActivity.this.finishFragment();
                }
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        ((DefaultItemAnimator) recyclerListView.getItemAnimator()).setSupportsChangeAnimations(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context));
        RecyclerListView recyclerListView2 = this.listView;
        RecyclerListView.SelectionAdapter selectionAdapter = new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.ReactionsDoubleTapManageActivity.2
            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 3 || viewHolder.getItemViewType() == 2;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                SetDefaultReactionCell setDefaultReactionCell;
                if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                    setDefaultReactionCell = new TextCheckCell(context);
                } else if (i == 0) {
                    ThemePreviewMessagesCell themePreviewMessagesCell = new ThemePreviewMessagesCell(context, ((BaseFragment) ReactionsDoubleTapManageActivity.this).parentLayout, 2);
                    if (Build.VERSION.SDK_INT >= 19) {
                        themePreviewMessagesCell.setImportantForAccessibility(4);
                    }
                    themePreviewMessagesCell.fragment = ReactionsDoubleTapManageActivity.this;
                    setDefaultReactionCell = themePreviewMessagesCell;
                } else if (i == 2) {
                    TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context);
                    textInfoPrivacyCell.setText(ReactionsDoubleTapManageActivity.this.initInfoText = LocaleController.getString("DoubleTapPreviewRational", C3634R.string.DoubleTapPreviewRational));
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(context, C3634R.C3636drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    setDefaultReactionCell = textInfoPrivacyCell;
                } else if (i == 3) {
                    SetDefaultReactionCell setDefaultReactionCell2 = new SetDefaultReactionCell(context);
                    setDefaultReactionCell2.update(false);
                    setDefaultReactionCell = setDefaultReactionCell2;
                } else if (i == 4) {
                    View view = new View(this, context) { // from class: org.telegram.ui.ReactionsDoubleTapManageActivity.2.1
                        @Override // android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(16), 1073741824));
                        }
                    };
                    view.setBackground(Theme.getThemedDrawableByKey(context, C3634R.C3636drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    setDefaultReactionCell = view;
                } else {
                    setDefaultReactionCell = new AvailableReactionCell(context, true, true);
                }
                return new RecyclerListView.Holder(setDefaultReactionCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                int itemViewType = getItemViewType(i);
                if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                    TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getString("Enable", C3634R.string.Enable), ReactionsDoubleTapManageActivity.this.getForkCommonController().isQuickReactionEnabled(), false);
                } else if (itemViewType == 2) {
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i == ReactionsDoubleTapManageActivity.this.enableSectionRow && ReactionsDoubleTapManageActivity.this.getForkCommonController().isQuickReactionEnabled()) {
                        textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(ReactionsDoubleTapManageActivity.this.getParentActivity(), C3634R.C3636drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                        textInfoPrivacyCell.setFixedSize(1);
                        textInfoPrivacyCell.setText(null);
                        return;
                    }
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(ReactionsDoubleTapManageActivity.this.getParentActivity(), C3634R.C3636drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setFixedSize(0);
                    if (i != ReactionsDoubleTapManageActivity.this.enableSectionRow) {
                        textInfoPrivacyCell.setText(ReactionsDoubleTapManageActivity.this.initInfoText);
                    } else {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3634R.string.quick_reaction_settings_enable_item_hint));
                    }
                } else if (getItemViewType(i) != 1) {
                } else {
                    AvailableReactionCell availableReactionCell = (AvailableReactionCell) viewHolder.itemView;
                    TLRPC$TL_availableReaction tLRPC$TL_availableReaction = (TLRPC$TL_availableReaction) ReactionsDoubleTapManageActivity.this.getAvailableReactions().get(i - ReactionsDoubleTapManageActivity.this.reactionsStartRow);
                    if (MediaDataController.getInstance(((BaseFragment) ReactionsDoubleTapManageActivity.this).currentAccount).getDoubleTapReaction() != null) {
                        availableReactionCell.bind(tLRPC$TL_availableReaction, tLRPC$TL_availableReaction.reaction.contains(MediaDataController.getInstance(((BaseFragment) ReactionsDoubleTapManageActivity.this).currentAccount).getDoubleTapReaction()), ((BaseFragment) ReactionsDoubleTapManageActivity.this).currentAccount);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                ReactionsDoubleTapManageActivity reactionsDoubleTapManageActivity = ReactionsDoubleTapManageActivity.this;
                return reactionsDoubleTapManageActivity.rowCount + ((reactionsDoubleTapManageActivity.premiumReactionRow >= 0 || !reactionsDoubleTapManageActivity.getForkCommonController().isQuickReactionEnabled()) ? 0 : ReactionsDoubleTapManageActivity.this.getAvailableReactions().size()) + 1;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i == ReactionsDoubleTapManageActivity.this.enableRow) {
                    return IdFabric$ViewTypes.TEXT_CHECK_CELL;
                }
                ReactionsDoubleTapManageActivity reactionsDoubleTapManageActivity = ReactionsDoubleTapManageActivity.this;
                if (i == reactionsDoubleTapManageActivity.previewRow) {
                    return 0;
                }
                if (i == reactionsDoubleTapManageActivity.infoRow || i == reactionsDoubleTapManageActivity.enableSectionRow) {
                    return 2;
                }
                if (i == ReactionsDoubleTapManageActivity.this.premiumReactionRow) {
                    return 3;
                }
                return i == getItemCount() - 1 ? 4 : 1;
            }
        };
        this.listAdapter = selectionAdapter;
        recyclerListView2.setAdapter(selectionAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ReactionsDoubleTapManageActivity.this.lambda$createView$0(view, i);
            }
        });
        linearLayout.addView(this.listView, LayoutHelper.createLinear(-1, -1));
        this.contentView = linearLayout;
        this.fragmentView = linearLayout;
        updateColors();
        updateRows();
        return this.contentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view, int i) {
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckBox();
            int itemCount = this.listAdapter.getItemCount();
            getForkCommonController().setQuickReactionEnabled(!getForkCommonController().isQuickReactionEnabled());
            getForkCommonController().saveConfig();
            updateRows();
            int abs = Math.abs(itemCount - this.listAdapter.getItemCount());
            if (textCheckCell.isChecked()) {
                this.listAdapter.notifyItemRangeInserted(this.enableSectionRow + 1, abs);
            } else {
                this.listAdapter.notifyItemRangeRemoved(this.enableSectionRow + 1, abs);
            }
            this.listAdapter.notifyItemChanged(this.enableSectionRow);
        } else if (view instanceof AvailableReactionCell) {
            AvailableReactionCell availableReactionCell = (AvailableReactionCell) view;
            if (availableReactionCell.locked && !getUserConfig().isPremium()) {
                showDialog(new PremiumFeatureBottomSheet(this, 4, true));
                return;
            }
            MediaDataController.getInstance(this.currentAccount).setDoubleTapReaction(availableReactionCell.react.reaction);
            this.listView.getAdapter().notifyItemRangeChanged(0, this.listView.getAdapter().getItemCount());
        } else if (view instanceof SetDefaultReactionCell) {
            showSelectStatusDialog((SetDefaultReactionCell) view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ReactionsDoubleTapManageActivity$SetDefaultReactionCell */
    /* loaded from: classes5.dex */
    public class SetDefaultReactionCell extends FrameLayout {
        private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable imageDrawable;
        private TextView textView;

        public SetDefaultReactionCell(Context context) {
            super(context);
            setBackgroundColor(ReactionsDoubleTapManageActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 16.0f);
            this.textView.setTextColor(ReactionsDoubleTapManageActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.textView.setText(LocaleController.getString("DoubleTapSetting", C3634R.string.DoubleTapSetting));
            addView(this.textView, LayoutHelper.createFrame(-1, -2, 23, 20, 0, 48, 0));
            this.imageDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m104dp(24));
        }

        public void update(boolean z) {
            String doubleTapReaction = MediaDataController.getInstance(((BaseFragment) ReactionsDoubleTapManageActivity.this).currentAccount).getDoubleTapReaction();
            if (doubleTapReaction != null && doubleTapReaction.startsWith("animated_")) {
                try {
                    this.imageDrawable.set(Long.parseLong(doubleTapReaction.substring(9)), z);
                    return;
                } catch (Exception unused) {
                }
            }
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction = MediaDataController.getInstance(((BaseFragment) ReactionsDoubleTapManageActivity.this).currentAccount).getReactionsMap().get(doubleTapReaction);
            if (tLRPC$TL_availableReaction != null) {
                this.imageDrawable.set(tLRPC$TL_availableReaction.static_icon, z);
            }
        }

        public void updateImageBounds() {
            this.imageDrawable.setBounds((getWidth() - this.imageDrawable.getIntrinsicWidth()) - AndroidUtilities.m104dp(21), (getHeight() - this.imageDrawable.getIntrinsicHeight()) / 2, getWidth() - AndroidUtilities.m104dp(21), (getHeight() + this.imageDrawable.getIntrinsicHeight()) / 2);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            updateImageBounds();
            this.imageDrawable.draw(canvas);
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

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ba A[LOOP:0: B:20:0x00b4->B:22:0x00ba, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showSelectStatusDialog(final org.telegram.p043ui.ReactionsDoubleTapManageActivity.SetDefaultReactionCell r17) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ReactionsDoubleTapManageActivity.showSelectStatusDialog(org.telegram.ui.ReactionsDoubleTapManageActivity$SetDefaultReactionCell):void");
    }

    private void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.enableRow = 0;
        this.rowCount = i + 1;
        this.enableSectionRow = i;
        if (!getForkCommonController().isQuickReactionEnabled()) {
            this.premiumReactionRow = -1;
            this.reactionsStartRow = -1;
            this.infoRow = -1;
            this.previewRow = -1;
            return;
        }
        int i2 = this.rowCount;
        int i3 = i2 + 1;
        this.rowCount = i3;
        this.previewRow = i2;
        this.rowCount = i3 + 1;
        this.infoRow = i3;
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            this.reactionsStartRow = -1;
            int i4 = this.rowCount;
            this.rowCount = i4 + 1;
            this.premiumReactionRow = i4;
            return;
        }
        this.premiumReactionRow = -1;
        this.reactionsStartRow = this.rowCount;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.reactionsDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<TLRPC$TL_availableReaction> getAvailableReactions() {
        return getMediaDataController().getReactionsList();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return SimpleThemeDescription.createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ReactionsDoubleTapManageActivity.this.updateColors();
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
        if (i2 != this.currentAccount) {
            return;
        }
        if (i == NotificationCenter.reactionsDidLoad) {
            this.listAdapter.notifyDataSetChanged();
        } else if (i == NotificationCenter.currentUserPremiumStatusChanged) {
            updateRows();
            this.listAdapter.notifyDataSetChanged();
        }
    }
}
