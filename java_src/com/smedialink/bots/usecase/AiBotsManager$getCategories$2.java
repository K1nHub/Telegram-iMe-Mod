package com.smedialink.bots.usecase;

import com.google.firebase.firestore.QuerySnapshot;
import com.smedialink.bots.domain.model.SmartBotCategory;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$getCategories$2 extends Lambda implements Function1<QuerySnapshot, ObservableSource<? extends List<? extends SmartBotCategory>>> {
    final /* synthetic */ String $language;
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$getCategories$2(AiBotsManager aiBotsManager, String str) {
        super(1);
        this.this$0 = aiBotsManager;
        this.$language = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends List<SmartBotCategory>> invoke(QuerySnapshot it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return this.this$0.getAvailableCategories(this.$language);
    }
}
