package p033j$.util.concurrent;

import java.security.PrivilegedAction;
/* renamed from: j$.util.concurrent.d */
/* loaded from: classes2.dex */
class C2808d implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        return Boolean.valueOf(Boolean.getBoolean("java.util.secureRandomSeed"));
    }
}
