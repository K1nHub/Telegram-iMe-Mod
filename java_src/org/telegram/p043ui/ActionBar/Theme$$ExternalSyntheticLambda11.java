package org.telegram.p043ui.ActionBar;

import java.util.Comparator;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda11 */
/* loaded from: classes5.dex */
public final /* synthetic */ class Theme$$ExternalSyntheticLambda11 implements Comparator {
    public static final /* synthetic */ Theme$$ExternalSyntheticLambda11 INSTANCE = new Theme$$ExternalSyntheticLambda11();

    private /* synthetic */ Theme$$ExternalSyntheticLambda11() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$sortThemes$1;
        lambda$sortThemes$1 = Theme.lambda$sortThemes$1((Theme.ThemeInfo) obj, (Theme.ThemeInfo) obj2);
        return lambda$sortThemes$1;
    }
}
