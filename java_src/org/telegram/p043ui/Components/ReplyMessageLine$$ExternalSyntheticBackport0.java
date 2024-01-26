package org.telegram.p043ui.Components;
/* renamed from: org.telegram.ui.Components.ReplyMessageLine$$ExternalSyntheticBackport0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ReplyMessageLine$$ExternalSyntheticBackport0 {
    /* renamed from: m */
    public static /* synthetic */ int m59m(int i, int i2) {
        int i3 = i % i2;
        if (i3 == 0) {
            return 0;
        }
        return (((i ^ i2) >> 31) | 1) > 0 ? i3 : i3 + i2;
    }
}
