package com.smedialink.utils.extentions.common;

import java.io.File;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: FileExt.kt */
/* loaded from: classes3.dex */
public final class FileExtKt {
    public static final boolean isMusic(File file) {
        List<String> listOf;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(file, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{".mp3", ".m4a"});
        if ((listOf instanceof Collection) && listOf.isEmpty()) {
            return false;
        }
        for (String str : listOf) {
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "name");
            String lowerCase = name.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(lowerCase, str, false, 2, null);
            if (endsWith$default) {
                return true;
            }
        }
        return false;
    }
}
