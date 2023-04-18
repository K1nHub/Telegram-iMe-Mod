package com.iMe.p031ui.custom.cells;

import com.iMe.p031ui.custom.SmallActionButton;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProfileTwitterCell.kt */
/* renamed from: com.iMe.ui.custom.cells.ProfileTwitterCell$buttonAdd$2 */
/* loaded from: classes3.dex */
public final class ProfileTwitterCell$buttonAdd$2 extends Lambda implements Function0<SmallActionButton> {
    final /* synthetic */ ProfileTwitterCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileTwitterCell$buttonAdd$2(ProfileTwitterCell profileTwitterCell) {
        super(0);
        this.this$0 = profileTwitterCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SmallActionButton invoke() {
        SmallActionButton createAddButton;
        createAddButton = this.this$0.createAddButton();
        return createAddButton;
    }
}
