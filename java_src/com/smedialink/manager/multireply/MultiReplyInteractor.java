package com.smedialink.manager.multireply;

import android.text.SpannableString;
import android.text.TextUtils;
import android.util.SparseArray;
import com.smedialink.manager.multireply.data.MultiReplyRepository;
import com.smedialink.manager.multireply.message.MessageLinkPattern;
import com.smedialink.manager.multireply.message.MessageLinkPatternKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.utils.extentions.model.telegram.UserExtKt;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.Components.URLSpanReplacement;
import org.telegram.p048ui.Components.URLSpanUserMention;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: MultiReplyInteractor.kt */
/* loaded from: classes3.dex */
public final class MultiReplyInteractor {
    private final MultiReplyRepository multiReplyRepo;

    public MultiReplyInteractor(MultiReplyRepository multiReplyRepo) {
        Intrinsics.checkNotNullParameter(multiReplyRepo, "multiReplyRepo");
        this.multiReplyRepo = multiReplyRepo;
    }

    public final Single<Result<CharSequence>> buildMultiReplyMessage(final List<? extends MessageObject> selectedMessages, TLRPC$Chat currentChat) {
        Intrinsics.checkNotNullParameter(selectedMessages, "selectedMessages");
        Intrinsics.checkNotNullParameter(currentChat, "currentChat");
        if (selectedMessages.isEmpty()) {
            Single<Result<CharSequence>> just = Single.just(Result.Companion.success(""));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Single map = this.multiReplyRepo.requestPattern(selectedMessages.get(0), currentChat).map(new Function() { // from class: com.smedialink.manager.multireply.MultiReplyInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result m1269buildMultiReplyMessage$lambda1;
                m1269buildMultiReplyMessage$lambda1 = MultiReplyInteractor.m1269buildMultiReplyMessage$lambda1(selectedMessages, this, (MessageLinkPattern) obj);
                return m1269buildMultiReplyMessage$lambda1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "{\n            multiReply…              }\n        }");
        return map;
    }

    public final List<MessageObject> prepareSelectedMessages(SparseArray<MessageObject>[] selectedMessagesId) {
        Intrinsics.checkNotNullParameter(selectedMessagesId, "selectedMessagesId");
        ArrayList arrayList = new ArrayList();
        for (SparseArray<MessageObject> sparseArray : selectedMessagesId) {
            int size = sparseArray.size();
            if (size > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    sparseArray.keyAt(i);
                    arrayList.add(sparseArray.valueAt(i));
                    if (i2 >= size) {
                        break;
                    }
                    i = i2;
                }
            }
        }
        return arrayList;
    }

    private final CharSequence buildMultiReplyMessageForMessageObject(MessageObject messageObject, MessageLinkPattern messageLinkPattern) {
        CharSequence[] charSequenceArr = new CharSequence[2];
        TLRPC$User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(messageObject.messageOwner.from_id.user_id));
        charSequenceArr[0] = user == null ? "" : buildSpannableStringUser(user);
        charSequenceArr[1] = buildMessageLink(messageObject, messageLinkPattern);
        CharSequence concat = TextUtils.concat(charSequenceArr);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ssage, pattern)\n        )");
        return concat;
    }

    private final SpannableString buildSpannableStringUser(TLRPC$User tLRPC$User) {
        SpannableString spannableString = new SpannableString(Intrinsics.stringPlus(UserExtKt.getPrivacySafeName(tLRPC$User), ":"));
        addUserNameSpan$default(this, spannableString, String.valueOf(tLRPC$User.f1633id), 0, 0, 4, null);
        return spannableString;
    }

    private final CharSequence buildMessageLink(MessageObject messageObject, MessageLinkPattern messageLinkPattern) {
        SpannableString spannableString = new SpannableString(Intrinsics.stringPlus(" ", Integer.valueOf(messageObject.getId())));
        if (spannableString.length() > 1) {
            addUrlSpan$default(this, spannableString, MessageLinkPatternKt.buildMessageLink(messageLinkPattern, messageObject.getId()), 0, 0, 6, null);
        }
        return spannableString;
    }

    static /* synthetic */ void addUrlSpan$default(MultiReplyInteractor multiReplyInteractor, SpannableString spannableString, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = spannableString.length();
        }
        multiReplyInteractor.addUrlSpan(spannableString, str, i, i2);
    }

    private final void addUrlSpan(SpannableString spannableString, String str, int i, int i2) {
        try {
            spannableString.setSpan(new URLSpanReplacement(str), i, i2, 33);
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    static /* synthetic */ void addUserNameSpan$default(MultiReplyInteractor multiReplyInteractor, SpannableString spannableString, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = spannableString.length();
        }
        multiReplyInteractor.addUserNameSpan(spannableString, str, i, i2);
    }

    private final void addUserNameSpan(SpannableString spannableString, String str, int i, int i2) {
        try {
            spannableString.setSpan(new URLSpanUserMention(str, 1), i, i2, 33);
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: buildMultiReplyMessage$lambda-1  reason: not valid java name */
    public static final Result m1269buildMultiReplyMessage$lambda1(List selectedMessages, MultiReplyInteractor this$0, MessageLinkPattern pattern) {
        String repeat;
        Intrinsics.checkNotNullParameter(selectedMessages, "$selectedMessages");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        CharSequence charSequence = "";
        int i = 0;
        for (Object obj : selectedMessages) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            repeat = StringsKt__StringsJVMKt.repeat("\n", 2);
            charSequence = TextUtils.concat(charSequence, this$0.buildMultiReplyMessageForMessageObject((MessageObject) obj, pattern), repeat);
            Intrinsics.checkNotNullExpressionValue(charSequence, "concat(\n                …                        )");
            i = i2;
        }
        return Result.Companion.success(charSequence);
    }
}
