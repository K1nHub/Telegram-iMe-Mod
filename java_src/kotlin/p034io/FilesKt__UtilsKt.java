package kotlin.p034io;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Utils.kt */
/* renamed from: kotlin.io.FilesKt__UtilsKt */
/* loaded from: classes4.dex */
public class FilesKt__UtilsKt extends FilesKt__FileTreeWalkKt {
    public static String getExtension(File file) {
        String substringAfterLast;
        Intrinsics.checkNotNullParameter(file, "<this>");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "name");
        substringAfterLast = StringsKt__StringsKt.substringAfterLast(name, '.', "");
        return substringAfterLast;
    }
}
