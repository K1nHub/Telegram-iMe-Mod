package com.smedialink.p031ui.wallet.notifications.details;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p010os.BundleKt;
import com.smedialink.model.wallet.notification.NotificationItem;
import com.smedialink.model.wallet.transfer.TransferScreenArgs;
import com.smedialink.p031ui.base.mvp.MvpBottomSheet;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.helper.wallet.WalletHelper;
import kotlin.Lazy;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.databinding.ForkContentWalletNotificationDetailsLayoutBinding;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ManageLinksActivity;
import org.telegram.p048ui.ProfileActivity;
/* compiled from: WalletNotificationDetailsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog */
/* loaded from: classes3.dex */
public final class WalletNotificationDetailsBottomSheetDialog extends MvpBottomSheet implements WalletNotificationDetailsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletNotificationDetailsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletNotificationDetailsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final NotificationItem item;
    private final Lazy resourceManager$delegate;

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WalletNotificationDetailsBottomSheetDialog(org.telegram.p048ui.ActionBar.BaseFragment r5, com.smedialink.model.wallet.notification.NotificationItem r6) {
        /*
            r4 = this;
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r5.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r4.<init>(r0, r1)
            r4.fragment = r5
            r4.item = r6
            com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$presenter$2 r5 = new com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$presenter$2
            r5.<init>(r4)
            moxy.ktx.MoxyKtxDelegate r6 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r0 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsPresenter> r3 = com.smedialink.p031ui.wallet.notifications.details.WalletNotificationDetailsPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r6.<init>(r0, r2, r5)
            org.koin.mp.KoinPlatformTools r5 = org.koin.p047mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$special$$inlined$inject$default$1 r6 = new com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$special$$inlined$inject$default$1
            r0 = 0
            r6.<init>(r4, r0, r0)
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r6)
            r4.resourceManager$delegate = r5
            com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$binding$2 r5 = new com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$binding$2
            r5.<init>(r4)
            com.smedialink.utils.extentions.delegate.ResettableLazy r5 = com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r0, r5, r1, r0)
            r4.binding$delegate = r5
            r5 = 0
            r4.setApplyBottomPadding(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog.<init>(org.telegram.ui.ActionBar.BaseFragment, com.smedialink.model.wallet.notification.NotificationItem):void");
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentWalletNotificationDetailsLayoutBinding getBinding() {
        return (ForkContentWalletNotificationDetailsLayoutBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupTexts();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.manager.wallet.WalletLinkClickableView
    public void actionOpenProfileScreen(long j) {
        ProfileActivity profileActivity = new ProfileActivity(BundleKt.bundleOf(TuplesKt.m100to("user_id", Long.valueOf(j))));
        profileActivity.setPlayProfileAnimation(0);
        this.fragment.presentFragment(profileActivity);
        dismiss();
    }

    @Override // com.smedialink.manager.wallet.WalletLinkClickableView
    public void actionCopyToClipboard(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        ContextExtKt.copyToClipboard$default(data, null, 2, null);
    }

    @Override // com.smedialink.manager.wallet.WalletLinkClickableView
    public void actionMakeTransfer(final TokenCode code, String userId, boolean z, final String address, final NetworkType networkType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        WalletHelper.runWithCheckIsCryptoWalletCreated(this.fragment, null, networkType.getBlockchainType(), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletNotificationDetailsBottomSheetDialog.m1715actionMakeTransfer$lambda1(WalletNotificationDetailsBottomSheetDialog.this, code, address, networkType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: actionMakeTransfer$lambda-1  reason: not valid java name */
    public static final void m1715actionMakeTransfer$lambda1(WalletNotificationDetailsBottomSheetDialog this$0, TokenCode code, String address, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(code, "$code");
        Intrinsics.checkNotNullParameter(address, "$address");
        Intrinsics.checkNotNullParameter(networkType, "$networkType");
        this$0.fragment.presentFragment(ManageLinksActivity.newInstanceForWalletTransfer(new TransferScreenArgs(code, address, null, null, networkType, 12, null)));
        this$0.dismiss();
    }

    @Override // com.smedialink.p031ui.wallet.notifications.details.WalletNotificationDetailsView
    public void setupScreenWithData(String date, String category) {
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(category, "category");
        ForkContentWalletNotificationDetailsLayoutBinding binding = getBinding();
        binding.textDate.setText(date);
        binding.textCategory.setText(category);
    }

    @Override // com.smedialink.manager.wallet.WalletLinkClickableView
    public void setupMessageClickableLink(String message, String clickableText, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(clickableText, "clickableText");
        Intrinsics.checkNotNullParameter(action, "action");
        AppCompatTextView appCompatTextView = getBinding().textMessage;
        appCompatTextView.setText(message);
        if (clickableText.length() > 0) {
            Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
            ViewExtKt.setSubstringClickListener(appCompatTextView, clickableText, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$$ExternalSyntheticLambda2
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletNotificationDetailsBottomSheetDialog.m1716setupMessageClickableLink$lambda4$lambda3(Function0.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupMessageClickableLink$lambda-4$lambda-3  reason: not valid java name */
    public static final void m1716setupMessageClickableLink$lambda4$lambda3(Function0 action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.smedialink.manager.wallet.WalletLinkClickableView
    public void showClickableTextDialog(String[] items, final Function1<? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(action, "action");
        AlertDialog.Builder builder = new AlertDialog.Builder(this.fragment.getParentActivity());
        builder.setItems(items, new DialogInterface.OnClickListener() { // from class: com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WalletNotificationDetailsBottomSheetDialog.m1717showClickableTextDialog$lambda6$lambda5(Function1.this, dialogInterface, i);
            }
        });
        Unit unit = Unit.INSTANCE;
        AlertDialog create = builder.create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(fragment.parentA…                .create()");
        showDialog(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showClickableTextDialog$lambda-6$lambda-5  reason: not valid java name */
    public static final void m1717showClickableTextDialog$lambda6$lambda5(Function1 action, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke(Integer.valueOf(i));
    }

    private final void setupColors() {
        ForkContentWalletNotificationDetailsLayoutBinding binding = getBinding();
        binding.linearRoot.setBackgroundColor(Theme.getColor("dialogBackground"));
        binding.textMessage.setTextColor(Theme.getColor("chats_message"));
        binding.textDate.setTextColor(Theme.getColor("chats_date"));
        AppCompatTextView appCompatTextView = binding.textActionCancel;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.setRippleBackground$default(appCompatTextView, false, 1, null);
        ViewExtKt.withMediumTypeface(appCompatTextView);
        appCompatTextView.setTextColor(Theme.getColor("chats_actionBackground"));
        AppCompatTextView appCompatTextView2 = binding.textCategory;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView2, "");
        ViewExtKt.withMediumTypeface(appCompatTextView2);
        appCompatTextView2.setTextColor(Theme.getColor("chats_name"));
    }

    private final void setupTexts() {
        getBinding().textActionCancel.setText(getResourceManager().getString(C3158R.string.common_ok));
    }

    private final void setupListeners() {
        AppCompatTextView textActionCancel = getBinding().textActionCancel;
        Intrinsics.checkNotNullExpressionValue(textActionCancel, "textActionCancel");
        ViewExtKt.safeThrottledClick$default(textActionCancel, 0L, new WalletNotificationDetailsBottomSheetDialog$setupListeners$1$1(this), 1, null);
    }

    /* compiled from: WalletNotificationDetailsBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletNotificationDetailsBottomSheetDialog newInstance(BaseFragment fragment, NotificationItem notification) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(notification, "notification");
            return new WalletNotificationDetailsBottomSheetDialog(fragment, notification);
        }
    }
}
