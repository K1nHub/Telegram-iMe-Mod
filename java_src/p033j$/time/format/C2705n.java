package p033j$.time.format;

import java.text.ParsePosition;
import java.util.Iterator;
import java.util.Set;
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
class C2705n {

    /* renamed from: a */
    protected String f547a;

    /* renamed from: b */
    protected String f548b;

    /* renamed from: c */
    protected char f549c;

    /* renamed from: d */
    protected C2705n f550d;

    /* renamed from: e */
    protected C2705n f551e;

    private C2705n(String str, String str2, C2705n c2705n) {
        this.f547a = str;
        this.f548b = str2;
        this.f550d = c2705n;
        this.f549c = str.length() == 0 ? (char) 65535 : this.f547a.charAt(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2705n(String str, String str2, C2705n c2705n, C2694c c2694c) {
        this(str, str2, c2705n);
    }

    /* renamed from: a */
    private boolean m890a(String str, String str2) {
        int i = 0;
        while (i < str.length() && i < this.f547a.length() && mo889b(str.charAt(i), this.f547a.charAt(i))) {
            i++;
        }
        if (i != this.f547a.length()) {
            C2705n mo887d = mo887d(this.f547a.substring(i), this.f548b, this.f550d);
            this.f547a = str.substring(0, i);
            this.f550d = mo887d;
            if (i < str.length()) {
                this.f550d.f551e = mo887d(str.substring(i), str2, null);
                this.f548b = null;
            } else {
                this.f548b = str2;
            }
            return true;
        } else if (i >= str.length()) {
            this.f548b = str2;
            return true;
        } else {
            String substring = str.substring(i);
            for (C2705n c2705n = this.f550d; c2705n != null; c2705n = c2705n.f551e) {
                if (mo889b(c2705n.f549c, substring.charAt(0))) {
                    return c2705n.m890a(substring, str2);
                }
            }
            C2705n mo887d2 = mo887d(substring, str2, null);
            mo887d2.f551e = this.f550d;
            this.f550d = mo887d2;
            return true;
        }
    }

    /* renamed from: e */
    public static C2705n m886e(Set set, C2711t c2711t) {
        C2705n c2705n = c2711t.m850j() ? new C2705n("", null, null) : new C2704m("", null, null, null);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            c2705n.m890a(str, str);
        }
        return c2705n;
    }

    /* renamed from: b */
    protected boolean mo889b(char c, char c2) {
        return c == c2;
    }

    /* renamed from: c */
    public String m888c(CharSequence charSequence, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = charSequence.length();
        if (mo885f(charSequence, index, length)) {
            int length2 = this.f547a.length() + index;
            C2705n c2705n = this.f550d;
            if (c2705n != null && length2 != length) {
                while (true) {
                    if (!mo889b(c2705n.f549c, charSequence.charAt(length2))) {
                        c2705n = c2705n.f551e;
                        if (c2705n == null) {
                            break;
                        }
                    } else {
                        parsePosition.setIndex(length2);
                        String m888c = c2705n.m888c(charSequence, parsePosition);
                        if (m888c != null) {
                            return m888c;
                        }
                    }
                }
            }
            parsePosition.setIndex(length2);
            return this.f548b;
        }
        return null;
    }

    /* renamed from: d */
    protected C2705n mo887d(String str, String str2, C2705n c2705n) {
        return new C2705n(str, str2, c2705n);
    }

    /* renamed from: f */
    protected boolean mo885f(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).startsWith(this.f547a, i);
        }
        int length = this.f547a.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!mo889b(this.f547a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
