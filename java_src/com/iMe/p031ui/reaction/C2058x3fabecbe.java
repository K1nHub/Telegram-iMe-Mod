package com.iMe.p031ui.reaction;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.reaction.ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$1 */
/* loaded from: classes3.dex */
public final class C2058x3fabecbe extends Lambda implements Function1<TLRPC$messages_BotResults, Result<? extends TLRPC$messages_BotResults>> {
    public static final C2058x3fabecbe INSTANCE = new C2058x3fabecbe();

    public C2058x3fabecbe() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends TLRPC$messages_BotResults> invoke(TLRPC$messages_BotResults tLRPC$messages_BotResults) {
        return Result.Companion.success(tLRPC$messages_BotResults);
    }
}
