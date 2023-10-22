package kotlin.reflect.jvm.internal.impl.name;
/* loaded from: classes4.dex */
public final class ClassId {
    private final boolean local;
    private final FqName packageFqName;
    private final FqName relativeClassName;

    /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void $$$reportNull$$$0(int r10) {
        /*
            r0 = 9
            r1 = 7
            r2 = 6
            r3 = 5
            if (r10 == r3) goto L13
            if (r10 == r2) goto L13
            if (r10 == r1) goto L13
            if (r10 == r0) goto L13
            switch(r10) {
                case 13: goto L13;
                case 14: goto L13;
                case 15: goto L13;
                case 16: goto L13;
                default: goto L10;
            }
        L10:
            java.lang.String r4 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto L15
        L13:
            java.lang.String r4 = "@NotNull method %s.%s must not return null"
        L15:
            r5 = 2
            if (r10 == r3) goto L23
            if (r10 == r2) goto L23
            if (r10 == r1) goto L23
            if (r10 == r0) goto L23
            switch(r10) {
                case 13: goto L23;
                case 14: goto L23;
                case 15: goto L23;
                case 16: goto L23;
                default: goto L21;
            }
        L21:
            r6 = 3
            goto L24
        L23:
            r6 = r5
        L24:
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.String r7 = "kotlin/reflect/jvm/internal/impl/name/ClassId"
            r8 = 0
            switch(r10) {
                case 1: goto L54;
                case 2: goto L4e;
                case 3: goto L54;
                case 4: goto L48;
                case 5: goto L45;
                case 6: goto L45;
                case 7: goto L45;
                case 8: goto L3f;
                case 9: goto L45;
                case 10: goto L39;
                case 11: goto L33;
                case 12: goto L33;
                case 13: goto L45;
                case 14: goto L45;
                case 15: goto L45;
                case 16: goto L45;
                default: goto L2d;
            }
        L2d:
            java.lang.String r9 = "topLevelFqName"
            r6[r8] = r9
            goto L59
        L33:
            java.lang.String r9 = "string"
            r6[r8] = r9
            goto L59
        L39:
            java.lang.String r9 = "segment"
            r6[r8] = r9
            goto L59
        L3f:
            java.lang.String r9 = "name"
            r6[r8] = r9
            goto L59
        L45:
            r6[r8] = r7
            goto L59
        L48:
            java.lang.String r9 = "topLevelName"
            r6[r8] = r9
            goto L59
        L4e:
            java.lang.String r9 = "relativeClassName"
            r6[r8] = r9
            goto L59
        L54:
            java.lang.String r9 = "packageFqName"
            r6[r8] = r9
        L59:
            r8 = 1
            if (r10 == r3) goto L81
            if (r10 == r2) goto L7c
            if (r10 == r1) goto L77
            if (r10 == r0) goto L72
            switch(r10) {
                case 13: goto L6d;
                case 14: goto L6d;
                case 15: goto L68;
                case 16: goto L68;
                default: goto L65;
            }
        L65:
            r6[r8] = r7
            goto L85
        L68:
            java.lang.String r7 = "asFqNameString"
            r6[r8] = r7
            goto L85
        L6d:
            java.lang.String r7 = "asString"
            r6[r8] = r7
            goto L85
        L72:
            java.lang.String r7 = "asSingleFqName"
            r6[r8] = r7
            goto L85
        L77:
            java.lang.String r7 = "getShortClassName"
            r6[r8] = r7
            goto L85
        L7c:
            java.lang.String r7 = "getRelativeClassName"
            r6[r8] = r7
            goto L85
        L81:
            java.lang.String r7 = "getPackageFqName"
            r6[r8] = r7
        L85:
            switch(r10) {
                case 1: goto L9e;
                case 2: goto L9e;
                case 3: goto L9e;
                case 4: goto L9e;
                case 5: goto La2;
                case 6: goto La2;
                case 7: goto La2;
                case 8: goto L99;
                case 9: goto La2;
                case 10: goto L93;
                case 11: goto L8e;
                case 12: goto L8e;
                case 13: goto La2;
                case 14: goto La2;
                case 15: goto La2;
                case 16: goto La2;
                default: goto L88;
            }
        L88:
            java.lang.String r7 = "topLevel"
            r6[r5] = r7
            goto La2
        L8e:
            java.lang.String r7 = "fromString"
            r6[r5] = r7
            goto La2
        L93:
            java.lang.String r7 = "startsWith"
            r6[r5] = r7
            goto La2
        L99:
            java.lang.String r7 = "createNestedClassId"
            r6[r5] = r7
            goto La2
        L9e:
            java.lang.String r7 = "<init>"
            r6[r5] = r7
        La2:
            java.lang.String r4 = java.lang.String.format(r4, r6)
            if (r10 == r3) goto Lb7
            if (r10 == r2) goto Lb7
            if (r10 == r1) goto Lb7
            if (r10 == r0) goto Lb7
            switch(r10) {
                case 13: goto Lb7;
                case 14: goto Lb7;
                case 15: goto Lb7;
                case 16: goto Lb7;
                default: goto Lb1;
            }
        Lb1:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            r10.<init>(r4)
            goto Lbc
        Lb7:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r10.<init>(r4)
        Lbc:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.name.ClassId.$$$reportNull$$$0(int):void");
    }

    public static ClassId topLevel(FqName fqName) {
        if (fqName == null) {
            $$$reportNull$$$0(0);
        }
        return new ClassId(fqName.parent(), fqName.shortName());
    }

    public ClassId(FqName fqName, FqName fqName2, boolean z) {
        if (fqName == null) {
            $$$reportNull$$$0(1);
        }
        if (fqName2 == null) {
            $$$reportNull$$$0(2);
        }
        this.packageFqName = fqName;
        this.relativeClassName = fqName2;
        this.local = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClassId(FqName fqName, Name name) {
        this(fqName, FqName.topLevel(name), false);
        if (fqName == null) {
            $$$reportNull$$$0(3);
        }
        if (name == null) {
            $$$reportNull$$$0(4);
        }
    }

    public FqName getPackageFqName() {
        FqName fqName = this.packageFqName;
        if (fqName == null) {
            $$$reportNull$$$0(5);
        }
        return fqName;
    }

    public FqName getRelativeClassName() {
        FqName fqName = this.relativeClassName;
        if (fqName == null) {
            $$$reportNull$$$0(6);
        }
        return fqName;
    }

    public Name getShortClassName() {
        Name shortName = this.relativeClassName.shortName();
        if (shortName == null) {
            $$$reportNull$$$0(7);
        }
        return shortName;
    }

    public boolean isLocal() {
        return this.local;
    }

    public ClassId createNestedClassId(Name name) {
        if (name == null) {
            $$$reportNull$$$0(8);
        }
        return new ClassId(getPackageFqName(), this.relativeClassName.child(name), this.local);
    }

    public ClassId getOuterClassId() {
        FqName parent = this.relativeClassName.parent();
        if (parent.isRoot()) {
            return null;
        }
        return new ClassId(getPackageFqName(), parent, this.local);
    }

    public boolean isNestedClass() {
        return !this.relativeClassName.parent().isRoot();
    }

    public FqName asSingleFqName() {
        if (this.packageFqName.isRoot()) {
            FqName fqName = this.relativeClassName;
            if (fqName == null) {
                $$$reportNull$$$0(9);
            }
            return fqName;
        }
        return new FqName(this.packageFqName.asString() + "." + this.relativeClassName.asString());
    }

    public static ClassId fromString(String str) {
        if (str == null) {
            $$$reportNull$$$0(11);
        }
        return fromString(str, false);
    }

    public static ClassId fromString(String str, boolean z) {
        String str2;
        if (str == null) {
            $$$reportNull$$$0(12);
        }
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf == -1) {
            str2 = "";
        } else {
            String replace = str.substring(0, lastIndexOf).replace('/', '.');
            str = str.substring(lastIndexOf + 1);
            str2 = replace;
        }
        return new ClassId(new FqName(str2), new FqName(str), z);
    }

    public String asString() {
        if (this.packageFqName.isRoot()) {
            String asString = this.relativeClassName.asString();
            if (asString == null) {
                $$$reportNull$$$0(13);
            }
            return asString;
        }
        String str = this.packageFqName.asString().replace('.', '/') + "/" + this.relativeClassName.asString();
        if (str == null) {
            $$$reportNull$$$0(14);
        }
        return str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ClassId.class != obj.getClass()) {
            return false;
        }
        ClassId classId = (ClassId) obj;
        return this.packageFqName.equals(classId.packageFqName) && this.relativeClassName.equals(classId.relativeClassName) && this.local == classId.local;
    }

    public int hashCode() {
        return (((this.packageFqName.hashCode() * 31) + this.relativeClassName.hashCode()) * 31) + Boolean.valueOf(this.local).hashCode();
    }

    public String toString() {
        if (this.packageFqName.isRoot()) {
            return "/" + asString();
        }
        return asString();
    }
}
