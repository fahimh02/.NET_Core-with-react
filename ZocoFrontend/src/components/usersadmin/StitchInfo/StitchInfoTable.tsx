// UsersTable.js

import React from "react";
import { FaEdit, FaTrash } from "react-icons/fa";

const StitchInfosTable = ({
    stitchInfos,
    handleDeleteStichInfo,
    handleEditStichInfo,
}: {
  stitchInfos: any[];
  handleDeleteStichInfo: (id: number) => void;
  handleEditStichInfo: (stitchInfo: any) => void;
}) => {
  return (
    <div className="overflow-x-auto">
      <table className="min-w-full bg-white border border-gray-200">
        <thead>
          <tr className="bg-gray-100 border-b border-gray-200">
            <th className="text-left py-2 px-3">Stitch Name</th>
            <th className="text-left py-2 px-3">Stitch Type</th>
            <th className="text-left py-2 px-3">Seam Width</th>
            <th className="text-left py-2 px-3">Actions</th>
          </tr>
        </thead>
        <tbody>
          {stitchInfos.map((stitchInfo) => (
            <tr
              key={stitchInfo.id}
              className="border-b border-gray-200 hover:bg-gray-50"
            >
              <td className="text-left py-3 px-4">{stitchInfo.stitchName}</td>
              <td className="text-left py-3 px-4">{stitchInfo.stitchType}</td>
              <td className="text-left py-3 px-4">{stitchInfo.seamWidth}</td>
              <td className="text-left py-3 px-4">
                <button
                  onClick={() => handleEditStichInfo(stitchInfo)}
                  className="text-blue-600 hover:text-blue-900"
                >
                  <FaEdit />
                </button>
                <button
                  onClick={() => handleDeleteStichInfo(stitchInfo.id)}
                  className="ml-2 text-red-600 hover:text-red-900"
                >
                  <FaTrash />
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default StitchInfosTable;
