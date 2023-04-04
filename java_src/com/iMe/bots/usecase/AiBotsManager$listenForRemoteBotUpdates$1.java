package com.iMe.bots.usecase;

import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import com.iMe.bots.usecase.AiBotsManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$listenForRemoteBotUpdates$1 extends Lambda implements Function1<QuerySnapshot, Unit> {
    final /* synthetic */ AiBotsManager.FirebaseSnapshotCallback $callback;
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$listenForRemoteBotUpdates$1(AiBotsManager aiBotsManager, AiBotsManager.FirebaseSnapshotCallback firebaseSnapshotCallback) {
        super(1);
        this.this$0 = aiBotsManager;
        this.$callback = firebaseSnapshotCallback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(QuerySnapshot querySnapshot) {
        invoke2(querySnapshot);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(QuerySnapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        List<DocumentSnapshot> documents = snapshot.getDocuments();
        Intrinsics.checkNotNullExpressionValue(documents, "snapshot.documents");
        if (!documents.isEmpty()) {
            this.this$0.getBotsRepository().storeBotDocuments(snapshot);
            this.$callback.onSuccess();
            this.this$0.fetchTags();
            this.this$0.rebuildActiveBotsList();
        }
    }
}
