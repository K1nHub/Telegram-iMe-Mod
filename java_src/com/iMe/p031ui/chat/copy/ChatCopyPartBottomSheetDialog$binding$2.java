package com.iMe.p031ui.chat.copy;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkChatCopyContentLayoutBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: ChatCopyPartBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.chat.copy.ChatCopyPartBottomSheetDialog$binding$2 */
/* loaded from: classes3.dex */
final class ChatCopyPartBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkChatCopyContentLayoutBinding> {
    final /* synthetic */ BaseFragment $fragment;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatCopyPartBottomSheetDialog$binding$2(BaseFragment baseFragment) {
        super(0);
        this.$fragment = baseFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkChatCopyContentLayoutBinding invoke() {
        return ForkChatCopyContentLayoutBinding.inflate(LayoutInflater.from(this.$fragment.getParentActivity()));
    }
}
