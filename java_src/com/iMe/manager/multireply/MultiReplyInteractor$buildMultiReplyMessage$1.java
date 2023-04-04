package com.iMe.manager.multireply;

import android.text.TextUtils;
import com.iMe.manager.multireply.message.MessageLinkPattern;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.MessageObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MultiReplyInteractor.kt */
/* loaded from: classes3.dex */
public final class MultiReplyInteractor$buildMultiReplyMessage$1 extends Lambda implements Function1<MessageLinkPattern, Result<? extends CharSequence>> {
    final /* synthetic */ List<MessageObject> $selectedMessages;
    final /* synthetic */ MultiReplyInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MultiReplyInteractor$buildMultiReplyMessage$1(List<? extends MessageObject> list, MultiReplyInteractor multiReplyInteractor) {
        super(1);
        this.$selectedMessages = list;
        this.this$0 = multiReplyInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CharSequence> invoke(MessageLinkPattern pattern) {
        CharSequence buildMultiReplyMessageForMessageObject;
        String repeat;
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        List<MessageObject> list = this.$selectedMessages;
        MultiReplyInteractor multiReplyInteractor = this.this$0;
        CharSequence charSequence = "";
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            buildMultiReplyMessageForMessageObject = multiReplyInteractor.buildMultiReplyMessageForMessageObject((MessageObject) obj, pattern);
            repeat = StringsKt__StringsJVMKt.repeat("\n", 2);
            charSequence = TextUtils.concat(charSequence, buildMultiReplyMessageForMessageObject, repeat);
            Intrinsics.checkNotNullExpressionValue(charSequence, "concat(\n                …                        )");
            i = i2;
        }
        return Result.Companion.success(charSequence);
    }
}
