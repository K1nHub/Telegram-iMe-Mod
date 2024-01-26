package org.telegram.p043ui.Components.Premium.boosts;

import android.graphics.Outline;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p043ui.Components.Premium.boosts.PremiumPreviewGiftToUsersBottomSheet;
import org.telegram.p043ui.Components.Premium.boosts.cells.ActionBtnCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftSentBottomSheet */
/* loaded from: classes6.dex */
public class PremiumPreviewGiftSentBottomSheet extends PremiumPreviewBottomSheet {
    private final List<TLRPC$User> selectedUsers;

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected boolean needDefaultPremiumBtn() {
        return false;
    }

    public static void show(List<TLRPC$User> list) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        PremiumPreviewGiftSentBottomSheet premiumPreviewGiftSentBottomSheet = new PremiumPreviewGiftSentBottomSheet(lastFragment, UserConfig.selectedAccount, list, lastFragment.getResourceProvider());
        premiumPreviewGiftSentBottomSheet.setAnimateConfetti(true);
        premiumPreviewGiftSentBottomSheet.setAnimateConfettiWithStars(true);
        premiumPreviewGiftSentBottomSheet.show();
    }

    public PremiumPreviewGiftSentBottomSheet(BaseFragment baseFragment, int i, List<TLRPC$User> list, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment, i, null, null, resourcesProvider);
        ArrayList arrayList = new ArrayList();
        this.selectedUsers = arrayList;
        arrayList.addAll(list);
        init();
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.paddingRow = 0;
        this.featuresStartRow = i;
        int size = i + this.premiumFeatures.size();
        this.rowCount = size;
        this.featuresEndRow = size;
        this.rowCount = size + 1;
        this.termsRow = size;
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    public void setTitle(boolean z) {
        String formatString;
        ((PremiumPreviewBottomSheet) this).titleView[0].setTextSize(1, 20.0f);
        this.subtitleView.setPadding(AndroidUtilities.m107dp(30), 0, AndroidUtilities.m107dp(30), 0);
        this.subtitleView.setLineSpacing(AndroidUtilities.m107dp(2), 1.0f);
        ((PremiumPreviewBottomSheet) this).titleView[0].setText(LocaleController.getPluralString("GiftPremiumGiftsSent", this.selectedUsers.size()));
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).bottomMargin = AndroidUtilities.m107dp(16);
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).topMargin = AndroidUtilities.m108dp(4.0f);
        int size = this.selectedUsers.size();
        if (size == 1) {
            formatString = LocaleController.formatString("GiftPremiumUsersPurchasedManyZero", C3632R.string.GiftPremiumUsersPurchasedManyZero, LocaleController.formatString("GiftPremiumUsersOne", C3632R.string.GiftPremiumUsersOne, UserObject.getFirstName(this.selectedUsers.get(0))));
        } else if (size == 2) {
            formatString = LocaleController.formatString("GiftPremiumUsersPurchasedManyZero", C3632R.string.GiftPremiumUsersPurchasedManyZero, LocaleController.formatString("GiftPremiumUsersTwo", C3632R.string.GiftPremiumUsersTwo, UserObject.getFirstName(this.selectedUsers.get(0)), UserObject.getFirstName(this.selectedUsers.get(1))));
        } else if (size == 3) {
            formatString = LocaleController.formatString("GiftPremiumUsersPurchasedManyZero", C3632R.string.GiftPremiumUsersPurchasedManyZero, LocaleController.formatString("GiftPremiumUsersThree", C3632R.string.GiftPremiumUsersThree, UserObject.getFirstName(this.selectedUsers.get(0)), UserObject.getFirstName(this.selectedUsers.get(1)), UserObject.getFirstName(this.selectedUsers.get(2))));
        } else {
            formatString = LocaleController.formatPluralString("GiftPremiumUsersPurchasedMany", this.selectedUsers.size() - 3, LocaleController.formatString("GiftPremiumUsersThree", C3632R.string.GiftPremiumUsersThree, UserObject.getFirstName(this.selectedUsers.get(0)), UserObject.getFirstName(this.selectedUsers.get(1)), UserObject.getFirstName(this.selectedUsers.get(2))));
        }
        this.subtitleView.setText(AndroidUtilities.replaceTags(formatString));
        this.subtitleView.append("\n");
        this.subtitleView.append("\n");
        if (this.selectedUsers.size() == 1) {
            this.subtitleView.append(AndroidUtilities.replaceTags(LocaleController.formatString("GiftPremiumGiftsSentStatusForUser", C3632R.string.GiftPremiumGiftsSentStatusForUser, UserObject.getFirstName(this.selectedUsers.get(0)))));
        } else {
            this.subtitleView.append(AndroidUtilities.replaceTags(LocaleController.getString("GiftPremiumGiftsSentStatus", C3632R.string.GiftPremiumGiftsSentStatus)));
        }
    }

    private void init() {
        updateRows();
        this.useBackgroundTopPadding = false;
        setApplyTopPadding(false);
        this.backgroundPaddingTop = 0;
        ActionBtnCell actionBtnCell = new ActionBtnCell(getContext(), this.resourcesProvider);
        actionBtnCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftSentBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PremiumPreviewGiftSentBottomSheet.this.lambda$init$0(view);
            }
        });
        actionBtnCell.setCloseStyle(true);
        this.containerView.addView(actionBtnCell, LayoutHelper.createFrame(-1, 64, 80, 0, 0, 0, 0));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, AndroidUtilities.m107dp(64));
        this.overrideTitleIcon = PremiumPreviewGiftToUsersBottomSheet.AvatarHolderView.createAvatarsContainer(getContext(), this.selectedUsers);
        fixNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(View view) {
        dismiss();
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void afterCellCreated(int i, View view) {
        if (i == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftSentBottomSheet.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view2, Outline outline) {
                        float m107dp = AndroidUtilities.m107dp(12);
                        outline.setRoundRect(0, 0, view2.getWidth(), (int) (view2.getHeight() + m107dp), m107dp);
                    }
                });
                view.setClipToOutline(true);
                view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
            }
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin = -AndroidUtilities.m107dp(6);
        }
    }

    @Override // org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet
    protected void attachIconContainer(LinearLayout linearLayout) {
        linearLayout.addView(this.overrideTitleIcon, LayoutHelper.createLinear(-1, this.selectedUsers.size() == 1 ? 94 : 83, 0, this.selectedUsers.size() == 1 ? 28 : 34, 0, this.selectedUsers.size() == 1 ? 9 : 14));
    }
}
