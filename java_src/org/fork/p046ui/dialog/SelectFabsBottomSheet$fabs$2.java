package org.fork.p046ui.dialog;

import com.smedialink.storage.domain.model.filters.FilterFab;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: SelectFabsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.SelectFabsBottomSheet$fabs$2 */
/* loaded from: classes4.dex */
final class SelectFabsBottomSheet$fabs$2 extends Lambda implements Function0<List<? extends FilterFab>> {
    public static final SelectFabsBottomSheet$fabs$2 INSTANCE = new SelectFabsBottomSheet$fabs$2();

    SelectFabsBottomSheet$fabs$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends FilterFab> invoke() {
        return FilterFab.Companion.getFabsList();
    }
}
