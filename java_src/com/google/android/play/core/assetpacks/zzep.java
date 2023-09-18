package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzep {
    private static final Pattern zza = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<File> zza(File file, File file2) throws IOException {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file2.listFiles(new FilenameFilter() { // from class: com.google.android.play.core.assetpacks.zzeo
            @Override // java.io.FilenameFilter
            public final boolean accept(File file3, String str) {
                boolean matches;
                matches = zzep.zza.matcher(str).matches();
                return matches;
            }
        });
        if (listFiles == null) {
            fileArr = new File[0];
        } else {
            File[] fileArr2 = new File[listFiles.length];
            for (File file3 : listFiles) {
                int parseInt = Integer.parseInt(file3.getName().split("-")[0]);
                if (parseInt <= listFiles.length && fileArr2[parseInt] == null) {
                    fileArr2[parseInt] = file3;
                } else {
                    throw new zzck("Metadata folder ordering corrupt.");
                }
            }
            fileArr = fileArr2;
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream fileInputStream = new FileInputStream(file4);
                try {
                    zzet zzb = new zzbw(fileInputStream).zzb();
                    if (zzb.zzc() != null) {
                        File file5 = new File(file, zzb.zzc());
                        if (!file5.exists()) {
                            throw new zzck(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                        }
                        arrayList.add(file5);
                        fileInputStream.close();
                    } else {
                        throw new zzck("Metadata files corrupt. Could not read local file header.");
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
