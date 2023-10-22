package p033j$.time.zone;

import java.security.PrivilegedAction;
import java.util.List;
/* renamed from: j$.time.zone.e */
/* loaded from: classes2.dex */
class C2760e implements PrivilegedAction {

    /* renamed from: a */
    final /* synthetic */ List f663a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2760e(List list) {
        this.f663a = list;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property == null) {
            AbstractC2762g.m697e(new C2761f());
            return null;
        }
        try {
            AbstractC2762g abstractC2762g = (AbstractC2762g) AbstractC2762g.class.cast(Class.forName(property, true, AbstractC2762g.class.getClassLoader()).newInstance());
            AbstractC2762g.m697e(abstractC2762g);
            this.f663a.add(abstractC2762g);
            return null;
        } catch (Exception e) {
            throw new Error(e);
        }
    }
}
