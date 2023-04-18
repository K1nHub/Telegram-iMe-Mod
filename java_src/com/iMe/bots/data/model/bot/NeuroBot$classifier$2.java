package com.iMe.bots.data.model.bot;

import com.google.firebase.p020ml.custom.FirebaseModelInterpreter;
import com.google.firebase.p020ml.custom.FirebaseModelOptions;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: NeuroBot.kt */
/* loaded from: classes3.dex */
final class NeuroBot$classifier$2 extends Lambda implements Function0<FirebaseModelInterpreter> {
    final /* synthetic */ NeuroBot this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NeuroBot$classifier$2(NeuroBot neuroBot) {
        super(0);
        this.this$0 = neuroBot;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FirebaseModelInterpreter invoke() {
        return FirebaseModelInterpreter.getInstance(new FirebaseModelOptions.Builder().setLocalModelName(this.this$0.getBotId()).build());
    }
}
