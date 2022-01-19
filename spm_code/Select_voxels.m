clear;clc;
%load image
vol  = spm_vol('spmT_0001.nii');
val  = spm_read_vols(vol);

%apply mask in spmT_0001.nii
%the dimensions of these two images should be the same
vol_mask = spm_vol('LO1.nii');
val_mask = spm_read_vols(vol_mask);
val_masked=val.*val_mask;
%selected 5% largest voxles
mask_size=numel(find(val_mask~=0));
[val_sort,sort_indx]=sort(val_masked(:));
max_indx=sort_indx(1:floor(mask_size*0.05));
%make selected mask
val_s_mask=zeros(vol.dim(1:3));
val_s_mask(max_indx)=1;

vol_s_mask=vol;
vol_s_mask.fname='Selected_mask.nii';
spm_write_vol(vol_s_mask,val_s_mask);
