package com.iMe.fork.p024ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.RadialProgress;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$uploadProgressBar$2 */
/* loaded from: classes3.dex */
public final class CreateReactionButtonsActivity$uploadProgressBar$2 extends Lambda implements Function0<RadialProgress> {
    final /* synthetic */ CreateReactionButtonsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReactionButtonsActivity$uploadProgressBar$2(CreateReactionButtonsActivity createReactionButtonsActivity) {
        super(0);
        this.this$0 = createReactionButtonsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RadialProgress invoke() {
        RadialProgress initUploadProgressBar;
        initUploadProgressBar = this.this$0.initUploadProgressBar();
        return initUploadProgressBar;
    }
}