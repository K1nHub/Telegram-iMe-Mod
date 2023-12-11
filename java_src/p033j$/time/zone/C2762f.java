package p033j$.time.zone;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TimeZone;
/* renamed from: j$.time.zone.f */
/* loaded from: classes2.dex */
final class C2762f extends AbstractC2763g {

    /* renamed from: c */
    private final Set f664c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2762f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : TimeZone.getAvailableIDs()) {
            linkedHashSet.add(str);
        }
        this.f664c = Collections.unmodifiableSet(linkedHashSet);
    }

    @Override // p033j$.time.zone.AbstractC2763g
    /* renamed from: c */
    protected C2759c mo700c(String str, boolean z) {
        if (this.f664c.contains(str)) {
            return new C2759c(TimeZone.getTimeZone(str));
        }
        throw new C2760d("Not a built-in time zone: " + str);
    }

    @Override // p033j$.time.zone.AbstractC2763g
    /* renamed from: d */
    protected Set mo699d() {
        return this.f664c;
    }
}
