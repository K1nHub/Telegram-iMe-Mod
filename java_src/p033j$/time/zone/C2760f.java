package p033j$.time.zone;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TimeZone;
/* renamed from: j$.time.zone.f */
/* loaded from: classes2.dex */
final class C2760f extends AbstractC2761g {

    /* renamed from: c */
    private final Set f664c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2760f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : TimeZone.getAvailableIDs()) {
            linkedHashSet.add(str);
        }
        this.f664c = Collections.unmodifiableSet(linkedHashSet);
    }

    @Override // p033j$.time.zone.AbstractC2761g
    /* renamed from: c */
    protected C2757c mo703c(String str, boolean z) {
        if (this.f664c.contains(str)) {
            return new C2757c(TimeZone.getTimeZone(str));
        }
        throw new C2758d("Not a built-in time zone: " + str);
    }

    @Override // p033j$.time.zone.AbstractC2761g
    /* renamed from: d */
    protected Set mo702d() {
        return this.f664c;
    }
}
