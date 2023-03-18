package com.smedialink.bots.usecase;

import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$getCategories$1 extends Lambda implements Function1<QuerySnapshot, QuerySnapshot> {
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$getCategories$1(AiBotsManager aiBotsManager) {
        super(1);
        this.this$0 = aiBotsManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final QuerySnapshot invoke(QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        if (!documents.isEmpty()) {
            this.this$0.getBotsRepository().storeCategoryDocuments(snapshot);
        }
        return snapshot;
    }
}
