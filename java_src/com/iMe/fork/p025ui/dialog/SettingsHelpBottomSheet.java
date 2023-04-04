package com.iMe.fork.p025ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.iMe.fork.enums.DrawerSocialNetwork;
import com.iMe.fork.p025ui.view.SocialNetworksRowView;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: SettingsHelpBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet */
/* loaded from: classes3.dex */
public final class SettingsHelpBottomSheet extends BottomSheet {
    private final BaseFragment fragment;
    private final List<Pair<String, Function0<Unit>>> items;
    private final Lazy rootView$delegate;

    /* compiled from: SettingsHelpBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$ScreenType */
    /* loaded from: classes3.dex */
    public enum ScreenType {
        COMMON_SETTINGS,
        WALLET_SETTINGS
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsHelpBottomSheet(ScreenType screenType, BaseFragment fragment) {
        super(fragment.getParentActivity(), false);
        Lazy lazy;
        List<Pair<String, Function0<Unit>>> listOfNotNull;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
        lazy = LazyKt__LazyJVMKt.lazy(new SettingsHelpBottomSheet$rootView$2(this));
        this.rootView$delegate = lazy;
        Pair[] pairArr = new Pair[8];
        pairArr[0] = TuplesKt.m94to(LocaleController.getInternalString(C3316R.string.settings_help_alert_support_item_title), new SettingsHelpBottomSheet$items$1(this));
        pairArr[1] = TuplesKt.m94to(LocaleController.getInternalString(C3316R.string.settings_help_alert_group_item_title), new SettingsHelpBottomSheet$items$2(this));
        pairArr[2] = TuplesKt.m94to(LocaleController.getInternalString(C3316R.string.settings_help_alert_lime_group_item_title), new SettingsHelpBottomSheet$items$3(this));
        pairArr[3] = TuplesKt.m94to(LocaleController.getInternalString(C3316R.string.settings_help_alert_channel_item_title), new SettingsHelpBottomSheet$items$4(this));
        pairArr[4] = TuplesKt.m94to(LocaleController.getInternalString(C3316R.string.settings_help_alert_faq_item_title), new SettingsHelpBottomSheet$items$5(this));
        pairArr[5] = TuplesKt.m94to(LocaleController.getString("PrivacyPolicy", C3316R.string.PrivacyPolicy), new SettingsHelpBottomSheet$items$6(this));
        ScreenType screenType2 = ScreenType.COMMON_SETTINGS;
        pairArr[6] = screenType == screenType2 ? TuplesKt.m94to(LocaleController.getString("AskAQuestion", C3316R.string.AskAQuestion), new SettingsHelpBottomSheet$items$7(this)) : null;
        pairArr[7] = screenType == screenType2 ? TuplesKt.m94to(LocaleController.getString("TelegramFeatures", C3316R.string.TelegramFeatures), new SettingsHelpBottomSheet$items$8(this)) : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(pairArr);
        this.items = listOfNotNull;
        setApplyBottomPadding(false);
        setCustomView(getRootView());
        setTitle(LocaleController.getString("SettingsHelp", C3316R.string.SettingsHelp), true);
    }

    private final ScrollView getRootView() {
        return (ScrollView) this.rootView$delegate.getValue();
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return getRootView().canScrollVertically(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ScrollView initRootView() {
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.setFillViewport(true);
        scrollView.addView(createContentLayout());
        return scrollView;
    }

    private final LinearLayout createContentLayout() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        int i = 0;
        for (Object obj : this.items) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            linearLayout.addView(createBottomSheetCell(i), LayoutHelper.createFrame(-1, 48));
            i = i2;
        }
        linearLayout.addView(initSocialNetworksRowView(), LayoutHelper.createLinear(-1, 44));
        return linearLayout;
    }

    private final BottomSheet.BottomSheetCell createBottomSheetCell(int i) {
        BottomSheet.BottomSheetCell bottomSheetCell = new BottomSheet.BottomSheetCell(getContext(), 0, null);
        final Pair<String, Function0<Unit>> pair = this.items.get(i);
        bottomSheetCell.setTag(Integer.valueOf(i));
        bottomSheetCell.setTextAndIcon(pair.getFirst(), 0, null, true);
        bottomSheetCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsHelpBottomSheet.createBottomSheetCell$lambda$4$lambda$3(Pair.this, view);
            }
        });
        return bottomSheetCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createBottomSheetCell$lambda$4$lambda$3(Pair item, View view) {
        Intrinsics.checkNotNullParameter(item, "$item");
        ((Function0) item.getSecond()).invoke();
    }

    private final SocialNetworksRowView initSocialNetworksRowView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        final SocialNetworksRowView socialNetworksRowView = new SocialNetworksRowView(context);
        socialNetworksRowView.setListener(new SocialNetworksRowView.OnSocialNetworkClickListener() { // from class: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$initSocialNetworksRowView$1$1
            @Override // com.iMe.fork.p025ui.view.SocialNetworksRowView.OnSocialNetworkClickListener
            public void onSocialNetworkClick(DrawerSocialNetwork socialNetwork, boolean z) {
                BaseFragment baseFragment;
                BaseFragment baseFragment2;
                AlertDialog createSocialNetworkAlert;
                Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
                baseFragment = SettingsHelpBottomSheet.this.fragment;
                baseFragment.dismissCurrentDialog();
                if (z) {
                    baseFragment2 = SettingsHelpBottomSheet.this.fragment;
                    createSocialNetworkAlert = SettingsHelpBottomSheet.this.createSocialNetworkAlert(socialNetwork);
                    baseFragment2.showDialog(createSocialNetworkAlert);
                    return;
                }
                Browser.openUrl(socialNetworksRowView.getContext(), socialNetwork.url());
            }
        });
        return socialNetworksRowView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AlertDialog createSocialNetworkAlert(final DrawerSocialNetwork drawerSocialNetwork) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(LocaleController.getInternalString(drawerSocialNetwork.getTitleResId()));
        String string = LocaleController.getString("Open", C3316R.string.Open);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Open\", R.string.Open)");
        String string2 = LocaleController.getString("CopyLink", C3316R.string.CopyLink);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(\"CopyLink\", R.string.CopyLink)");
        builder.setItems(new CharSequence[]{string, string2}, new DialogInterface.OnClickListener() { // from class: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SettingsHelpBottomSheet.createSocialNetworkAlert$lambda$7$lambda$6(AlertDialog.Builder.this, drawerSocialNetwork, dialogInterface, i);
            }
        });
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createSocialNetworkAlert$lambda$7$lambda$6(AlertDialog.Builder this_apply, DrawerSocialNetwork socialNetwork, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(socialNetwork, "$socialNetwork");
        if (i == 0) {
            Browser.openUrl(this_apply.getContext(), socialNetwork.url());
        } else if (i != 1) {
        } else {
            AndroidUtilities.addToClipboard(socialNetwork.url());
            String string = LocaleController.getString("LinkCopied", C3316R.string.LinkCopied);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"LinkCopied\", R.string.LinkCopied)");
            ContextExtKt.toast(string);
        }
    }

    /* compiled from: SettingsHelpBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SettingsHelpBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
