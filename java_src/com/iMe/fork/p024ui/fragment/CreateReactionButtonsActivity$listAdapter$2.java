package com.iMe.fork.p024ui.fragment;

import com.iMe.fork.p024ui.fragment.CreateReactionButtonsActivity;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateReactionButtonsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CreateReactionButtonsActivity$listAdapter$2 */
/* loaded from: classes3.dex */
public final class CreateReactionButtonsActivity$listAdapter$2 extends Lambda implements Function0<CreateReactionButtonsActivity.ListAdapter> {
    final /* synthetic */ CreateReactionButtonsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReactionButtonsActivity$listAdapter$2(CreateReactionButtonsActivity createReactionButtonsActivity) {
        super(0);
        this.this$0 = createReactionButtonsActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CreateReactionButtonsActivity.ListAdapter invoke() {
        ResourceManager resourceManager;
        CreateReactionButtonsActivity createReactionButtonsActivity = this.this$0;
        resourceManager = createReactionButtonsActivity.getResourceManager();
        return new CreateReactionButtonsActivity.ListAdapter(createReactionButtonsActivity, resourceManager);
    }
}
