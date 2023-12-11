package p033j$.time.zone;

import java.security.PrivilegedAction;
import java.util.List;
/* renamed from: j$.time.zone.e */
/* loaded from: classes2.dex */
class C2761e implements PrivilegedAction {

    /* renamed from: a */
    final /* synthetic */ List f663a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2761e(List list) {
        this.f663a = list;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property == null) {
            AbstractC2763g.m698e(new C2762f());
            return null;
        }
        try {
            AbstractC2763g abstractC2763g = (AbstractC2763g) AbstractC2763g.class.cast(Class.forName(property, true, AbstractC2763g.class.getClassLoader()).newInstance());
            AbstractC2763g.m698e(abstractC2763g);
            this.f663a.add(abstractC2763g);
            return null;
        } catch (Exception e) {
            throw new Error(e);
        }
    }
}
