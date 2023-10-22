package org.telegram.p042ui.Components;

import java.util.ArrayList;
import java.util.Objects;
import org.telegram.p042ui.ActionBar.ThemeDescription;
/* renamed from: org.telegram.ui.Components.SimpleThemeDescription */
/* loaded from: classes6.dex */
public class SimpleThemeDescription {
    public static ThemeDescription createThemeDescription(ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate, int i) {
        return new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i);
    }

    public static ArrayList<ThemeDescription> createThemeDescriptions(ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate, int... iArr) {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>(iArr.length);
        for (int i : iArr) {
            arrayList.add(createThemeDescription(themeDescriptionDelegate, i));
        }
        return arrayList;
    }

    public static void add(ArrayList<ThemeDescription> arrayList, final Runnable runnable, int... iArr) {
        Objects.requireNonNull(runnable);
        arrayList.addAll(createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.SimpleThemeDescription$$ExternalSyntheticLambda0
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                runnable.run();
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, iArr));
    }
}
