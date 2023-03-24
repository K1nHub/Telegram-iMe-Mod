package com.smedialink.p031ui.chat.copy;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.p031ui.base.mvp.MvpBottomSheet;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.databinding.ForkChatCopyContentLayoutBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: ChatCopyPartBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.chat.copy.ChatCopyPartBottomSheetDialog */
/* loaded from: classes3.dex */
public final class ChatCopyPartBottomSheetDialog extends MvpBottomSheet {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ChatCopyPartBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final String message;
    private final Lazy resourceManager$delegate;

    public static final ChatCopyPartBottomSheetDialog newInstance(BaseFragment baseFragment, String str) {
        return Companion.newInstance(baseFragment, str);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChatCopyPartBottomSheetDialog(org.telegram.p048ui.ActionBar.BaseFragment r4, java.lang.String r5) {
        /*
            r3 = this;
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "message"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            android.app.Activity r0 = r4.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r3.<init>(r0, r1)
            r3.message = r5
            org.koin.mp.KoinPlatformTools r5 = org.koin.p047mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.smedialink.ui.chat.copy.ChatCopyPartBottomSheetDialog$special$$inlined$inject$default$1 r0 = new com.smedialink.ui.chat.copy.ChatCopyPartBottomSheetDialog$special$$inlined$inject$default$1
            r2 = 0
            r0.<init>(r3, r2, r2)
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r0)
            r3.resourceManager$delegate = r5
            com.smedialink.ui.chat.copy.ChatCopyPartBottomSheetDialog$binding$2 r5 = new com.smedialink.ui.chat.copy.ChatCopyPartBottomSheetDialog$binding$2
            r5.<init>(r4)
            com.smedialink.utils.extentions.delegate.ResettableLazy r4 = com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r3, r2, r5, r1, r2)
            r3.binding$delegate = r4
            r4 = 0
            r3.setApplyBottomPadding(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.chat.copy.ChatCopyPartBottomSheetDialog.<init>(org.telegram.ui.ActionBar.BaseFragment, java.lang.String):void");
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkChatCopyContentLayoutBinding getBinding() {
        return (ForkChatCopyContentLayoutBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
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

    private final void setupColors() {
        ForkChatCopyContentLayoutBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        AppCompatTextView buttonClose = binding.buttonClose;
        Intrinsics.checkNotNullExpressionValue(buttonClose, "buttonClose");
        ViewExtKt.setRippleBackground$default(buttonClose, false, 1, null);
        binding.buttonClose.setTextColor(Theme.getColor("dialogTextRed"));
        binding.textMessage.setTextColor(Theme.getColor("chat_messagePanelText"));
        binding.viewDivider.setBackgroundColor(Theme.getColor("divider"));
    }

    private final void setupTexts() {
        ForkChatCopyContentLayoutBinding binding = getBinding();
        binding.buttonClose.setText(getResourceManager().getString(C3301R.string.common_close));
        binding.textMessage.setText(this.message);
    }

    private final void setupListeners() {
        AppCompatTextView appCompatTextView = getBinding().buttonClose;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "binding.buttonClose");
        ViewExtKt.safeThrottledClick$default(appCompatTextView, 0L, new ChatCopyPartBottomSheetDialog$setupListeners$1(this), 1, null);
    }

    /* compiled from: ChatCopyPartBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.chat.copy.ChatCopyPartBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChatCopyPartBottomSheetDialog newInstance(BaseFragment fragment, String message) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(message, "message");
            return new ChatCopyPartBottomSheetDialog(fragment, message);
        }
    }
}
